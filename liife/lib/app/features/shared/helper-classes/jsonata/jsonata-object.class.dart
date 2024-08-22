import 'dart:convert';
import 'package:jsonata_flutter/jsonata_flutter.dart';

class JsonAtaObject<T> {
  T _value;

  JsonAtaObject(this._value);

  static JsonAtaObject chain(dynamic data) {
    return JsonAtaObject(jsonEncode(data));
  }

  Future<JsonAtaObject> transform(String jsonataExpression) async {
    JsonAta jsonAta = JsonAta(jsonData: _value.toString());
    dynamic result =
        jsonDecode(await jsonAta.execute(expression: jsonataExpression))
            .toString();

    _value = result;
    return this;
  }

  T get value => _value;
}
