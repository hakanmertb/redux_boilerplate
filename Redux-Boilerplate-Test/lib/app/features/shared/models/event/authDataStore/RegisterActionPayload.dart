class RegisterActionPayload {
  final String? redirectUrl;
  final Map<String, dynamic> user;

  RegisterActionPayload(Map<String, dynamic> map)
      : redirectUrl = map['redirectUrl'],
        user = map['user'];

  Map<String, dynamic> toJson() {
    return {
      'redirectUrl': redirectUrl,
      'user': user,
    };
  }
}
