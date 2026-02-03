import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class NoAccountWidget extends StatelessWidget {
  const NoAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppString.of(context).dontHaveAccount,
          style: AppTextStyles.lexendRegular12(
            context: context,
            fontSize: 14,
          ).copyWith(color: AppColors.loginSubtitleColor),
        ),
      ],
    );
  }
}
