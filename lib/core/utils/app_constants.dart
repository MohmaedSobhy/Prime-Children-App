import 'package:prime_app/Feature/onBoarding/data/models/on_boarding_view_model.dart';
import 'package:prime_app/core/utils/app_images.dart';
import 'package:prime_app/core/utils/app_strings.dart';

class AppConstants {
  static final List<OnBoardingViewModel> onBoardingItems = [
    OnBoardingViewModel(
      imagePath: AppImages.onBoardingImage1,
      title: AppString.onBoardingTitle1,
      description: AppString.onBoardingSubTitle1,
    ),
    OnBoardingViewModel(
      imagePath: AppImages.onBoardingImage2,
      title: AppString.onBoardingTitle2,
      description: AppString.onBoardingSubTitle2,
    ),
    OnBoardingViewModel(
      imagePath: AppImages.onBoardingImage3,
      title: AppString.onBoardingTitle3,
      description: AppString.onBoardingSubTitle3,
    ),
  ];
}
