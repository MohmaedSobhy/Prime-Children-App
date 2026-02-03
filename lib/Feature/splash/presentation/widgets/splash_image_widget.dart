import 'package:flutter/material.dart';
import 'package:prime_app/core/utils/app_images.dart';

class SplashImageWidget extends StatelessWidget {
  const SplashImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.6,
      child: const AspectRatio(
        aspectRatio: 4 / 3,
        child: Image(
          image: AssetImage(AppImages.onBoardingImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
