import 'package:flutter/material.dart';
import 'package:liife/app/features/data-stores/appDataStore/store.dart';
import 'app/app.dart';

void main() {
  final appStore = createStore();
  runApp(MyApp(
    appStore: appStore,
  ));
}
