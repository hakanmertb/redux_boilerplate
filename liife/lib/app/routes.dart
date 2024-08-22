import 'package:flutter/material.dart';
import 'package:liife/app/features/screens/auth_screen/welcome_screen.dart';
import 'package:liife/app/features/screens/home_screen/home.dart';

class AppRoutes {
  static const String home = '/home';
  static const String main = '/';
  static const String auth = '/auth';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => const Home());
      case main:
        return MaterialPageRoute(builder: (context) => const WelcomeScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
