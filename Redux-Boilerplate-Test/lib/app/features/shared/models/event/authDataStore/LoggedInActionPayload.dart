class LoggedInActionPayload {
  final Map<String, dynamic> user;
  final String? redirectUrl;

  LoggedInActionPayload(Map<String, dynamic> map)
      : user = map['user'],
        redirectUrl = map['redirectUrl'];

  Map<String, dynamic> toJson() {
    return {
      'user': user, // Assuming UserWithRelations has a toJson method
      'redirectUrl': redirectUrl,
    };
  }
}
