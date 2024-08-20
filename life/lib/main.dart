import 'package:flutter/material.dart';
import 'app.dart';
import 'features/data-stores/app-data-store/store.dart';

void main() {
  final appStore = createStore();
  runApp(MyApp(
    appStore: appStore,
  ));
}
