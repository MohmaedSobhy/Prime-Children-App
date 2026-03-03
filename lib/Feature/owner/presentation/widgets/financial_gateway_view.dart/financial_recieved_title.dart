import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class FinancialReceivedTitle extends StatelessWidget {
  const FinancialReceivedTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppString.received,
          style: AppTextStyles.lexendSemiBold12(
            context: context,
            fontSize: 16,
          ).copyWith(color: AppColors.dashboardTitleColor),
        ),
        Text(
          '+12% this month',
          style: AppTextStyles.lexendRegular12(
            context: context,
            fontSize: 12,
          ).copyWith(color: AppColors.onlineGreen),
        ),
      ],
    );
  }
}
