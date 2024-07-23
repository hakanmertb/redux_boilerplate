import 'package:flutter/material.dart';
import 'package:redux_boilerplate/jsonata.dart';

import 'features/counter/views/counter_view.dart';

class AppRoutes {
  static const String home = '/';
  static const String test = '/test';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const CounterView(),
    test: (context) => const TestPage(),
  };
}
