class SetTokenActionPayload {
  final String token;

  SetTokenActionPayload(Map<String, dynamic> map) : token = map['token'];

  Map<String, dynamic> toJson() {
    return {
      'token': token,
    };
  }
}
