class NavigateActionPayload {
  final String? path;

  NavigateActionPayload(Map<String, dynamic> map) : path = map['path'];

  Map<String, dynamic> toJson() {
    return {
      'path': path,
    };
  }
}
