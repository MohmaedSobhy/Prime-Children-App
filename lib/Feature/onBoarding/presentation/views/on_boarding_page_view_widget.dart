import 'package:flutter/material.dart';
import 'package:prime_app/Feature/onBoarding/data/models/on_boarding_view_model.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class OnBoardingPageViewWidget extends StatelessWidget {
  const OnBoardingPageViewWidget({
    super.key,
    required this.onBoardingViewModel,
  });
  final OnBoardingViewModel onBoardingViewModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.35,
          width: MediaQuery.sizeOf(context).width * 0.82,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(onBoardingViewModel.imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
        Text(
          onBoardingViewModel.title,
          textAlign: TextAlign.center,

          style: AppTextStyles.lexendBold40(
            context: context,
            fontSize: 32,
          ).copyWith(color: Colors.black),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
        Text(
          onBoardingViewModel.description,
          style: AppTextStyles.lexendRegular12(
            context: context,
            fontSize: 16,
          ).copyWith(color: AppColors.onBoardingDescriptionColor),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
