class GetTokenByCredentialsSuccessfulActionPayload {
  final String token;
  final String? redirectUrl;

  GetTokenByCredentialsSuccessfulActionPayload(Map<String, dynamic> map)
      : token = map['token'],
        redirectUrl = map['redirectUrl'];

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'redirectUrl': redirectUrl,
    };
  }
}
