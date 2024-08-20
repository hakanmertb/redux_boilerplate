class SetUserActionPayload {
  final Map<String, dynamic>? user;

  SetUserActionPayload(Map<String, dynamic> map) : user = map['user'];

  Map<String, dynamic> toJson() {
    return {
      'user': user,
    };
  }
}
