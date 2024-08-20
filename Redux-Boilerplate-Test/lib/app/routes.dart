import 'package:flutter/material.dart';
import 'package:njktest2/app/features/screens/auth_screen/welcome_screen.dart';

import 'features/screens/home_screen/test_page.dart';

class AppRoutes {
  static const String home = '/home';
  static const String auth = '/auth/login';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const TempView(),
    auth: (context) => const WelcomeScreen(),
  };
}
