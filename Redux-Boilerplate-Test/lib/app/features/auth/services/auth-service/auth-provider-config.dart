import 'dart:developer';
import 'package:authwebview/authwebview.dart';
import 'package:flutter/material.dart';
import 'package:njktest2/definitons/oauth-config.dart';

class AuthorizationService {
  static final Map<String, OAuthProvider> providers = {
    'Rapider': const OAuthProvider(
        name: 'Rapider',
        discoveryUrl: OauthConfig.rapiderDiscoveryUrl,
        clientId: OauthConfig.rapiderClientId,
        redirectUrl: OauthConfig.rapiderRedirectUrl),
    'Google': const OAuthProvider(
        name: 'Google',
        discoveryUrl: OauthConfig.googleDiscoveryUrl,
        clientId: OauthConfig.googleClientId,
        redirectUrl: OauthConfig.googleRedirectUrl),
    'Descope': const OAuthProvider(
        name: 'Descope',
        discoveryUrl: OauthConfig.descopeDiscoveryUrl,
        clientId: OauthConfig.descopeClientId,
        redirectUrl: OauthConfig.descopeRedirectUrl),
  };

  static Future<AuthorizationTokenResponse?> authorize(
      String providerName, BuildContext context) async {
    try {
      final provider = providers[providerName];
      final result = await AuthService.performOAuthFlow(
        context,
        provider!,
        loadingWidget: const CircularProgressIndicator(),
      );
      return result;
    } catch (e) {
      log('Error during authorization: $e');
      return null;
    }
  }
}
