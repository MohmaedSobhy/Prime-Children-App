import 'package:flutter/material.dart';
import 'package:prime_app/Feature/Auth/presentation/screens/login_screen.dart';

abstract class AppRoutes {
  static const String loginScreen = "/login";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const LoginScreen();
          },
        );
    }
    return null;
  }
}
