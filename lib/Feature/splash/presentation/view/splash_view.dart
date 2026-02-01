import 'package:flutter/material.dart';
import 'package:prime_app/Feature/splash/presentation/widgets/splash_view_body.dart';
import 'package:prime_app/core/routes/app_route.dart';
import 'package:prime_app/core/theme/app_colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _navigateToOnBoarding();
  }

  void _navigateToOnBoarding() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.pushReplacementNamed(context, AppRoute.onBoardingScreen);
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.splashGradient),
        child: const SafeArea(child: SplashViewBody()),
      ),
    );
  }
}
