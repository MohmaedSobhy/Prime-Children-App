import 'package:flutter/material.dart';
import 'package:prime_app/Feature/onBoarding/data/models/on_boarding_view_model.dart';
import 'package:prime_app/core/utils/app_images.dart';
import 'package:prime_app/core/utils/app_strings.dart';

class AppConstants {
  static List<OnBoardingViewModel> onBoardingItems(BuildContext context) {
    final strings = AppString.of(context);

    return [
      OnBoardingViewModel(
        imagePath: AppImages.onBoardingImage1,
        title: strings.onBoardingTitle1,
        description: strings.onBoardingSubTitle1,
      ),
      OnBoardingViewModel(
        imagePath: AppImages.onBoardingImage2,
        title: strings.onBoardingTitle2,
        description: strings.onBoardingSubTitle2,
      ),
      OnBoardingViewModel(
        imagePath: AppImages.onBoardingImage3,
        title: strings.onBoardingTitle3,
        description: strings.onBoardingSubTitle3,
      ),
    ];
  }
}
