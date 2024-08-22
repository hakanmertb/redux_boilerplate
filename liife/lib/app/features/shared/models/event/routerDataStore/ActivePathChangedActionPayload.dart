class ActivePathChangedActionPayload {
  final String? path;

  ActivePathChangedActionPayload(Map<String, dynamic> map) : path = map['path'];

  Map<String, dynamic> toJson() {
    return {
      'path': path,
    };
  }
}
