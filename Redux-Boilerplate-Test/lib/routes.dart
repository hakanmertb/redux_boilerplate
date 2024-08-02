import 'package:flutter/material.dart';

import 'test_page.dart';

class AppRoutes {
  static const String home = '/';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const TempView(),
  };
}
