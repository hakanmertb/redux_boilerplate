import 'package:flutter/material.dart';
import 'package:njktest2/app.dart';
import 'package:njktest2/features/data-stores/appDataStore/store.dart';

void main() {
  final appDataStore = createStore();
  runApp(MyApp(
    appDataStore: appDataStore,
  ));
}
