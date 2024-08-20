import 'package:flutter/material.dart';
import 'package:life/features/data-stores/user-data-store/screens/userscreen.dart';
import 'package:page_transition/page_transition.dart';

import 'features/data-stores/authentication-data-store/screens/login_screen.dart';
import 'features/data-stores/authentication-data-store/screens/signup_screen.dart';

class AppRoutes {
  static const String signInPage = '/';
  static const String signUpPage = '/signUp';
  static const String userPage = '/user';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signInPage:
        return PageTransition(
          child: const LoginScreen(),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case signUpPage:
        return PageTransition(
          child: const SignUpScreen(),
          type: PageTransitionType.bottomToTopJoined,
          childCurrent: const LoginScreen(),
          duration: const Duration(milliseconds: 600),
          settings: settings,
        );
      case userPage:
        return PageTransition(
            child: const UserScreen(), type: PageTransitionType.fade);
      default:
        return null;
    }
  }
}
