import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomRecentPaymentsTitle extends StatelessWidget {
  const CustomRecentPaymentsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppString.recentPayments,
      style: AppTextStyles.lexendBold40(
        context: context,
        fontSize: 18,
      ).copyWith(color: AppColors.dashboardGlobalAlertsTitleColor),
    );
  }
}
