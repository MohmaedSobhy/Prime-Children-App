import 'package:flutter/material.dart';
import 'package:prime_app/Feature/onBoarding/presentation/controller/on_boarding_cubit.dart';
import 'package:prime_app/Feature/onBoarding/presentation/views/on_boarding_page_view_widget.dart';
import 'package:prime_app/core/utils/app_constants.dart';

class OnBoardingViewPageView extends StatelessWidget {
  const OnBoardingViewPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = AppConstants.onBoardingItems(context);
    return PageView.builder(
      itemBuilder: (context, index) =>
          OnBoardingPageViewWidget(onBoardingViewModel: items[index]),
      controller: OnBoardingCubit.get(context).pageController,
      itemCount: items.length,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
