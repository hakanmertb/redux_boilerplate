class GetBookByIdActionPayload {
  final String id;

  GetBookByIdActionPayload(Map<String, dynamic> map) : id = map['id'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
    };
  }
}
