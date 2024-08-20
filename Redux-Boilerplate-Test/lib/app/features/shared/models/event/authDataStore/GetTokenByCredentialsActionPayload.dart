class GetTokenByCredentialsActionPayload {
  final String? redirectUrl;
  final Map<String, dynamic> credentials;

  GetTokenByCredentialsActionPayload(Map<String, dynamic> map)
      : credentials = map['credentials'],
        redirectUrl = map['redirectUrl'];

  Map<String, dynamic> toJson() {
    return {
      'credentials': credentials,
      'redirectUrl': redirectUrl,
    };
  }
}
