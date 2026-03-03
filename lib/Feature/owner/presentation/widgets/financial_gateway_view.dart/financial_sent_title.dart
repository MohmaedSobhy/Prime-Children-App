import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class FinancialSentTitle extends StatelessWidget {
  const FinancialSentTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppString.sent,
          style: AppTextStyles.lexendSemiBold12(
            context: context,
            fontSize: 16,
          ).copyWith(color: AppColors.dashboardTitleColor),
        ),
        Text(
          AppString.viewAll,
          style: AppTextStyles.lexendRegular12(
            context: context,
            fontSize: 12,
          ).copyWith(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
