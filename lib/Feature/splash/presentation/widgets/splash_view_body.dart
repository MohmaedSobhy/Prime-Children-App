import 'package:flutter/material.dart';
import 'package:prime_app/Feature/splash/presentation/widgets/splash_title_and_subtitle.dart';
import 'package:prime_app/Feature/splash/presentation/widgets/splash_version_widget.dart';
import 'package:prime_app/core/utils/app_strings.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SplashTitleAndSubtitle(
            title: AppString.of(context).splashTitle,
            subtitle: AppString.of(context).splashSubTitle,
          ),
        ),
        SplashVersionWidget(text: AppString.of(context).version),
      ],
    );
  }
}
