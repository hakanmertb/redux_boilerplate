class SetQueryParamsActionPayload {
  final dynamic queryParams;

  SetQueryParamsActionPayload(Map<String, dynamic> map)
      : queryParams = map['queryParams'];

  Map<String, dynamic> toJson() {
    return {
      'queryParams': queryParams,
    };
  }
}
