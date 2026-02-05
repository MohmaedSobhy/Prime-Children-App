import 'package:flutter/material.dart';
import 'package:prime_app/Feature/Auth/presentation/screens/login_screen.dart';
import 'package:prime_app/Feature/home/presentation/home_router_page.dart';
import 'package:prime_app/Feature/onBoarding/presentation/screens/on_boarding_view.dart';
import 'package:prime_app/Feature/splash/presentation/view/splash_view.dart';

abstract class AppRoute {
  static const String splashScreen = "/Splash Screen";
  static const String onBoardingScreen = "/OnBoarding Screen";
  static const String loginScreen = "/Login Screen";
  static const String homeScreen = "/Home Screen";
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashView();
          },
        );
      case onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const OnBoardingView();
          },
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const LoginScreen();
          },
        );
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const HomeRouterPage();
          },
        );
    }
    return null;
  }
}
