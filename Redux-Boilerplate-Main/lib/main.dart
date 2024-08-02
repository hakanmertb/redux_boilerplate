import 'package:flutter/material.dart';
import 'package:redux_boilerplate/app.dart';

import 'features/data-stores/appstore/store.dart';

void main() {
  final appStore = createStore();
  runApp(MyApp(
    appStore: appStore,
  ));
}
