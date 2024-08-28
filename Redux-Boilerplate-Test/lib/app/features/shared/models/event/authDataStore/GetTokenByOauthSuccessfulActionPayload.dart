import 'package:authwebview/authwebview.dart';

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
