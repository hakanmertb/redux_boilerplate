import 'package:flutter_appauth/flutter_appauth.dart';

class GetTokenByOauthSuccessfulActionPayload {
  final AuthorizationTokenResponse authorizationTokenResponse;
  final String? redirectUrl;

  GetTokenByOauthSuccessfulActionPayload(Map<String, dynamic> map)
      : authorizationTokenResponse = map['authorizationTokenResponse'],
        redirectUrl = map['redirectUrl'];

  Map<String, dynamic> toJson() {
    return {
      'authorizationTokenResponse': authorizationTokenResponse,
      'redirectUrl': redirectUrl
    };
  }
}
