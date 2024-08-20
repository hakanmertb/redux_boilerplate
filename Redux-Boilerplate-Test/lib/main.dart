import 'package:flutter/material.dart';
import 'package:njktest2/app/app.dart';
import 'package:njktest2/app/features/data-stores/appDataStore/store.dart';

void main() async {
  final appDataStore = createStore();
  runApp(MyApp(
    appDataStore: appDataStore,
  ));
}
