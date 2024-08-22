class RouterState {
  final List<dynamic>? queryParams;
  final List<dynamic>? params;
  final String? currentPath;

  RouterState({
    this.queryParams,
    this.params,
    this.currentPath,
  });

  factory RouterState.initial() => RouterState(
        queryParams: null,
        params: null,
        currentPath: null,
      );

  RouterState copyWith({
    List<dynamic>? queryParams,
    List<dynamic>? params,
    String? currentPath,
  }) {
    return RouterState(
      queryParams: queryParams ?? this.queryParams,
      params: params ?? this.params,
      currentPath: currentPath ?? this.currentPath,
    );
  }
}
