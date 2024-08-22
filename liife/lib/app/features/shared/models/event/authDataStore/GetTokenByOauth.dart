class GetTokenByOauthActionPayload {
  final String provider;
  final String? redirectUrl;

  GetTokenByOauthActionPayload(Map<String, dynamic> map)
      : provider = map['provider'],
        redirectUrl = map['redirectUrl'];

  Map<String, dynamic> toJson() {
    return {'provider': provider, 'redirectUrl': redirectUrl};
  }
}
