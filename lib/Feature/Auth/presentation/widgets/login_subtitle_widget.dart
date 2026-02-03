import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class LoginSubtitleWidget extends StatelessWidget {
  const LoginSubtitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppString.of(context).loginSubtitle,
      style: AppTextStyles.lexendMedium16(
        context: context,
      ).copyWith(color: AppColors.loginSubtitleColor),
    );
  }
}
