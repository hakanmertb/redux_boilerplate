class LoginOrRegisterByDescopeRefreshTokenActionPayload {
  final String refreshToken;
  final String? redirectUrl;

  LoginOrRegisterByDescopeRefreshTokenActionPayload(Map<String, dynamic> map)
      : refreshToken = map['refreshToken'],
        redirectUrl = map['redirectUrl'];

  Map<String, dynamic> toJson() {
    return {'refreshToken': refreshToken, 'redirectUrl': redirectUrl};
  }
}
