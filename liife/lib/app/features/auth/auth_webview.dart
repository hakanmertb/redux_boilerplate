import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:developer' as log;
import 'package:flutter/material.dart';
import 'package:liife/definitons/oauth-config.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';

class OAuthProvider {
  final String name;
  final String discoveryUrl;
  final String clientId;
  final String redirectUrl;
  final String logoutUrl;

  const OAuthProvider({
    required this.name,
    required this.discoveryUrl,
    required this.clientId,
    required this.redirectUrl,
    required this.logoutUrl,
  });
}

final List<OAuthProvider> providers = [
  const OAuthProvider(
    name: 'Rapider',
    discoveryUrl: OAuthConfig.rapiderDiscoveryUrl,
    clientId: OAuthConfig.rapiderClientId,
    redirectUrl: OAuthConfig.rapiderRedirectUrl,
    logoutUrl: OAuthConfig.rapiderLogoutUrl,
  ),
  const OAuthProvider(
    name: 'Google',
    discoveryUrl: OAuthConfig.googleDiscoveryUrl,
    clientId: OAuthConfig.googleClientId,
    redirectUrl: OAuthConfig.googleRedirectUrl,
    logoutUrl: OAuthConfig.googleLogoutUrl,
  ),
  const OAuthProvider(
    name: 'Descope',
    discoveryUrl: OAuthConfig.descopeDiscoveryUrl,
    clientId: OAuthConfig.descopeClientId,
    redirectUrl: OAuthConfig.descopeRedirectUrl,
    logoutUrl: OAuthConfig.descopeLogoutUrl,
  ),
];

class AuthorizationTokenResponse {
  final String? accessToken;
  final String? refreshToken;
  final DateTime? accessTokenExpirationDateTime;
  final String? idToken;
  final String? tokenType;
  final List<String>? scopes;
  final Map<String, dynamic>? authorizationAdditionalParameters;

  AuthorizationTokenResponse({
    this.accessToken,
    this.refreshToken,
    this.accessTokenExpirationDateTime,
    this.idToken,
    this.tokenType,
    this.scopes,
    this.authorizationAdditionalParameters,
  });

  factory AuthorizationTokenResponse.fromJson(Map<String, dynamic> json) {
    return AuthorizationTokenResponse(
      accessToken: json['access_token'],
      refreshToken: json['refresh_token'],
      accessTokenExpirationDateTime: json['expires_in'] != null
          ? DateTime.now().add(Duration(seconds: json['expires_in']))
          : null,
      idToken: json['id_token'],
      tokenType: json['token_type'],
      scopes: json['scope']?.split(' '),
      authorizationAdditionalParameters: json,
    );
  }
}

class OAuthWebView extends StatefulWidget {
  final String providerName;

  const OAuthWebView({
    super.key,
    required this.providerName,
  });

  @override
  State<OAuthWebView> createState() => _OAuthWebViewState();
}

class _OAuthWebViewState extends State<OAuthWebView> {
  WebViewController? _controller;
  bool _isLoading = true;
  String? _error;
  late final String _state;
  late final String _codeVerifier;
  late final String _codeChallenge;
  late final OAuthProvider _provider;

  @override
  void initState() {
    super.initState();
    _provider = providers.firstWhere((p) => p.name == widget.providerName);
    _state = _generateRandomString(32);
    _codeVerifier = _generateRandomString(128);
    _codeChallenge = _generateCodeChallenge(_codeVerifier);
    _initializeWebView();
  }

  String _generateRandomString(int length) {
    const chars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~';
    final random = Random.secure();
    return List.generate(length, (_) => chars[random.nextInt(chars.length)])
        .join();
  }

  String _generateCodeChallenge(String verifier) {
    final bytes = utf8.encode(verifier);
    final digest = sha256.convert(bytes);
    return base64Url.encode(digest.bytes).replaceAll('=', '');
  }

  Future<void> _initializeWebView() async {
    try {
      final authorizationUrl = await _getAuthorizationUrl();
      final controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageStarted: (_) => setState(() => _isLoading = true),
            onPageFinished: (_) => setState(() => _isLoading = false),
            onNavigationRequest: (NavigationRequest request) {
              if (request.url.startsWith(_provider.redirectUrl)) {
                _handleRedirect(request.url);
                return NavigationDecision.prevent;
              }
              return NavigationDecision.navigate;
            },
          ),
        )
        ..loadRequest(Uri.parse(authorizationUrl));

      setState(() => _controller = controller);
    } catch (e) {
      setState(() => _error = 'Failed to initialize WebView: $e');
    }
  }

  Future<String> _getAuthorizationUrl() async {
    try {
      final discoveryResponse =
          await http.get(Uri.parse(_provider.discoveryUrl));
      if (discoveryResponse.statusCode != 200) {
        throw Exception('Failed to fetch discovery document');
      }

      final discoveryData = json.decode(discoveryResponse.body);
      final authorizationEndpoint = discoveryData['authorization_endpoint'];

      return Uri.parse(authorizationEndpoint).replace(
        queryParameters: {
          'response_type': 'code',
          'client_id': _provider.clientId,
          'redirect_uri': _provider.redirectUrl,
          'scope': 'openid profile email phone',
          'state': _state,
          'code_challenge': _codeChallenge,
          'code_challenge_method': 'S256',
        },
      ).toString();
    } catch (e) {
      throw Exception('Failed to get authorization URL: $e');
    }
  }

  void _handleRedirect(String url) async {
    try {
      final uri = Uri.parse(url);
      final code = uri.queryParameters['code'];
      final returnedState = uri.queryParameters['state'];

      if (returnedState != _state) {
        throw Exception('Invalid state parameter');
      }

      if (code != null) {
        final result = await _exchangeCodeForToken(code);
        if (result != null) {
          Navigator.pop(context, result);
        } else {
          throw Exception('Failed to exchange code for token');
        }
      } else {
        throw Exception('No authorization code found in redirect URL');
      }
    } catch (e) {
      Navigator.pop(context, null);
      setState(() => _error = 'Authentication failed: $e');
    }
  }

  Future<AuthorizationTokenResponse?> _exchangeCodeForToken(String code) async {
    try {
      final discoveryResponse =
          await http.get(Uri.parse(_provider.discoveryUrl));
      final discoveryData = json.decode(discoveryResponse.body);
      final tokenEndpoint = discoveryData['token_endpoint'];

      final http.Response response = await http.post(
        Uri.parse(tokenEndpoint),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: {
          'grant_type': 'authorization_code',
          'code': code,
          'redirect_uri': _provider.redirectUrl,
          'client_id': _provider.clientId,
          'code_verifier': _codeVerifier,
        },
      );

      if (response.statusCode == 200) {
        final tokenData = json.decode(response.body);
        return AuthorizationTokenResponse.fromJson(tokenData);
      } else {
        throw Exception('Failed to get token: ${response.body}');
      }
    } catch (e) {
      log.log('Error during token exchange: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_error != null) {
      return Center(
          child: Text(_error!, style: const TextStyle(color: Colors.red)));
    }

    return Stack(
      children: [
        if (_controller != null) WebViewWidget(controller: _controller!),
        if (_isLoading || _controller == null)
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //TODO custom logo
                SizedBox(
                  height: 90,
                  child: Image.asset('assets/logo.png'),
                ),
                const SizedBox(
                  height: 8,
                ),
                const CircularProgressIndicator(),
              ],
            ),
          ),
      ],
    );
  }
}

Future<AuthorizationTokenResponse?> performOAuthFlow(
    BuildContext context, String providerName) async {
  try {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OAuthWebView(providerName: providerName),
      ),
    );
    return result;
  } catch (e) {
    log.log('OAuth flow error: $e');
    return null;
  }
}
