import 'package:flutter/material.dart';
import 'package:prime_app/Feature/Auth/presentation/screens/login_screen.dart';
import 'package:prime_app/Feature/home/presentation/home_router_page.dart';
import 'package:prime_app/Feature/onBoarding/presentation/screens/on_boarding_view.dart';
import 'package:prime_app/Feature/owner/presentation/views/bus_tracking_view.dart';
import 'package:prime_app/Feature/owner/presentation/views/financial_gateway_view.dart';
import 'package:prime_app/Feature/owner/presentation/views/nursery_details_view.dart';
import 'package:prime_app/Feature/splash/presentation/view/splash_view.dart';

abstract class AppRoute {
  static const String splashScreen = "/Splash Screen";
  static const String onBoardingScreen = "/OnBoarding Screen";
  static const String loginScreen = "/Login Screen";
  static const String homeScreen = "/Home Screen";
  static const String nurseryDetailView = "/Nursery Detail View";
  static const String busTrackingView = "/Bus Tracking View";
  static const String financialGatewayView = "/Financial Gateway View";
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
      case nurseryDetailView:
        return MaterialPageRoute(
          builder: (context) {
            return const NurseryDetailsView();
          },
        );
      case busTrackingView:
        return MaterialPageRoute(
          builder: (context) {
            return const BusTrackingView();
          },
        );
      case financialGatewayView:
        return MaterialPageRoute(
          builder: (context) {
            return const FinancialGatewayView();
          },
        );
    }
    return null;
  }
}
