import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/shared/login_screen.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/user_profile.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case '/':
      //   return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/userData':
        return MaterialPageRoute(builder: (_) => userData());
      default:
        return null;
    }
  }
}