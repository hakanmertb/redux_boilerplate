import 'package:flutter/material.dart';
import 'package:redux_boilerplate/app.dart';
import 'core/store.dart';

void main() {
  final store = createStore();
  runApp(MyApp(store: store));
}
