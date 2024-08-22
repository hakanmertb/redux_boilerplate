class LoginOrRegisterByDescopeRefreshTokenSuccessfulActionPayload {
  final String rapiderToken;
  final String? redirectUrl;

  LoginOrRegisterByDescopeRefreshTokenSuccessfulActionPayload(
      Map<String, dynamic> map)
      : rapiderToken = map['rapiderToken'],
        redirectUrl = map['redirectUrl'];

  Map<String, dynamic> toJson() {
    return {'rapiderToken': rapiderToken, 'redirectUrl': redirectUrl};
  }
}
