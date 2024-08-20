class SetParamsActionPayload {
  final dynamic params;

  SetParamsActionPayload(Map<String, dynamic> map) : params = map['params'];

  Map<String, dynamic> toJson() {
    return {
      'params': params,
    };
  }
}
