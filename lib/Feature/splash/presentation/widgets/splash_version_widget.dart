import 'package:flutter/material.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class SplashVersionWidget extends StatelessWidget {
  const SplashVersionWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(text, style: AppTextStyles.lexendRegular12(context: context)),
      ],
    );
  }
}
