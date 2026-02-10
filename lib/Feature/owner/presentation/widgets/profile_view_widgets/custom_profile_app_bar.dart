import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomProfileAppBar extends StatelessWidget {
  const CustomProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppString.profileSettings,
        style: AppTextStyles.lexendSemiBold12(
          context: context,
          fontSize: 16,
        ).copyWith(color: AppColors.dashboardTitleColor),
      ),
    );
  }
}
