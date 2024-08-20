class RegisterSuccessfulActionPayload {
  final String token;
  final String? redirectUrl;

  RegisterSuccessfulActionPayload(Map<String, dynamic> map)
      : token = map['token'],
        redirectUrl = map['redirectUrl'];

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'redirectUrl': redirectUrl,
    };
  }
}
