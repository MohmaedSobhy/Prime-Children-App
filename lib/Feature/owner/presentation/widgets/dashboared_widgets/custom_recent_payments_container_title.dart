import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomRecentPaymentsContainerTitle extends StatelessWidget {
  const CustomRecentPaymentsContainerTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Tutition Fee',
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.lexendBold40(
            context: context,
            fontSize: 14,
          ).copyWith(color: AppColors.dashboardGlobalAlertsTitleColor),
        ),
        Text(
          '+\$1200',
          style: AppTextStyles.lexendBold40(
            context: context,
            fontSize: 14,
          ).copyWith(color: AppColors.dashboardGlobalAlertsTitleColor),
        ),
      ],
    );
  }
}
