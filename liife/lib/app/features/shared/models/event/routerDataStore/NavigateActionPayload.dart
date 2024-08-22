class NavigateActionPayload {
  final String? path;
  final Map<String, dynamic>? arguments;

  ///önemli
  NavigateActionPayload(Map<String, dynamic> map)
      : path = map['path'],
        arguments = map['arguments'];

  Map<String, dynamic> toJson() {
    return {'path': path, 'arguments': arguments};
  }
}
