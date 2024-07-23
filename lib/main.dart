import 'package:flutter/material.dart';
import 'package:redux_boilerplate/app.dart';
import 'core/rootstore/store.dart' as rootstore;
import 'core/appstore/store.dart' as appstore;

void main() {
  final rootStore = rootstore.createStore();
  final appStore = appstore.createStore();
  runApp(MyApp(
    appStore: appStore,
    rootStore: rootStore,
  ));
}
