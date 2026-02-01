import 'package:flutter/material.dart';
import 'package:prime_app/Feature/splash/presentation/widgets/splash_image_widget.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class SplashTitleAndSubtitle extends StatelessWidget {
  const SplashTitleAndSubtitle({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SplashImageWidget(),
              Text(title, style: AppTextStyles.lexendBold40(context: context)),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
              Text(
                subtitle,
                style: AppTextStyles.lexendMedium16(context: context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
