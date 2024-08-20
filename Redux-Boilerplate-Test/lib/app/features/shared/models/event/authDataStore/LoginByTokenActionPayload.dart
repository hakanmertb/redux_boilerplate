class LoginByTokenActionPayload {
  final String token;
  final String? redirectUrl;

  LoginByTokenActionPayload(Map<String, dynamic> map)
      : token = map['token'],
        redirectUrl = map['redirectUrl'];

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'redirectUrl': redirectUrl,
    };
  }
}
