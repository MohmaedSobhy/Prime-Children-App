import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomGlobalAlertsTitleWidget extends StatelessWidget {
  const CustomGlobalAlertsTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppString.globalAlerts,
          style: AppTextStyles.lexendBold40(
            context: context,
            fontSize: 18,
          ).copyWith(color: AppColors.dashboardGlobalAlertsTitleColor),
        ),
        InkWell(
          child: Text(
            AppString.seeAll,
            style: AppTextStyles.lexendBold40(
              context: context,
              fontSize: 12,
            ).copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
