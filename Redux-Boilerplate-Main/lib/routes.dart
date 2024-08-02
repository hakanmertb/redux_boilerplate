import 'package:flutter/material.dart';
import 'test_counter_view.dart';

class AppRoutes {
  static const String home = '/';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const CounterView(),
  };
}
