import 'dart:developer';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:njktest2/app/features/auth/services/token-service/secure-storage-management-service.dart';
import 'package:njktest2/app/features/auth/services/token-service/token-service.dart';
import 'package:njktest2/definitons/oauth-config.dart';

class AuthProvidersConfig {
  static const FlutterAppAuth appAuth = FlutterAppAuth();
  static final SecureStorageManagementService secureStorageManagementService =
      SecureStorageManagementService();
  static final TokenService tokenService =
      TokenService(secureStorageManagementService);

  static final List<Map<String, String>> providers = [
    {
      'name': 'Rapider',
      'discoveryUrl': OauthConfig.rapiderDiscoveryUrl,
      'clientId': OauthConfig.rapiderClientId,
      'redirectUrl': OauthConfig.rapiderRedirectUrl,
      'logoutUrl': OauthConfig.rapiderLogoutUrl,
    },
    {
      'name': 'Google',
      'discoveryUrl': OauthConfig.googleDiscoveryUrl,
      'clientId': OauthConfig.googleClientId,
      'redirectUrl': OauthConfig.googleRedirectUrl,
      'logoutUrl': OauthConfig.googleLogoutUrl,
    },
    {
      'name': 'Descope',
      'discoveryUrl': OauthConfig.descopeDiscoveryUrl,
      'clientId': OauthConfig.descopeClientId,
      'redirectUrl': OauthConfig.descopeRedirectUrl,
      'logoutUrl': OauthConfig.descopeLogoutUrl,
    },
  ];

  static Future<AuthorizationTokenResponse?> authorize(
      String providerName) async {
    try {
      final provider = providers.firstWhere((p) => p['name'] == providerName);
      final result = await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          provider['clientId']!,
          provider['redirectUrl']!,
          discoveryUrl: provider['discoveryUrl'],
          scopes: ['openid', 'profile', 'email'],
        ),
      );
      await tokenService.setToken(result?.accessToken ?? '');
      return result;
    } catch (e) {
      log('Error during authorization: $e');
      return null;
    }
  }

  static Future<void> logout(String providerName) async {
    final idTokenHint = await tokenService.getToken();
    final provider = providers.firstWhere((p) => p['name'] == providerName);
    await appAuth.endSession(EndSessionRequest(
      idTokenHint: idTokenHint,
      postLogoutRedirectUrl: provider['logoutUrl']!,
    ));
    await tokenService.clearToken();
  }
}
