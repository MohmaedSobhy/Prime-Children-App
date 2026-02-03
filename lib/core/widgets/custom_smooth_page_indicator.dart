import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicatorWidget extends StatelessWidget {
  const CustomSmoothPageIndicatorWidget({
    super.key,
    required this.pageController,
    this.effect,
    this.length = 3,
  });
  final int length;
  final PageController pageController;
  final IndicatorEffect? effect;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: length,

      effect:
          effect ??
          const ExpandingDotsEffect(activeDotColor: AppColors.primaryColor),
    );
  }
}
