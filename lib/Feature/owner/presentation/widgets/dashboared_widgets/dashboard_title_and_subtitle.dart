import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class DashboardTitleAndSubtitle extends StatelessWidget {
  const DashboardTitleAndSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppString.welcomeBack,
          style: AppTextStyles.lexendMedium16(
            context: context,
            fontSize: 14,
          ).copyWith(color: AppColors.dashboardSubTitleColor),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),
        Text(
          AppString.globalDashboard,
          style: AppTextStyles.lexendBold40(
            context: context,
            fontSize: 32,
          ).copyWith(color: AppColors.dashboardTitleColor),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.005),
        Text(
          AppString.overviewOfNursery,
          style: AppTextStyles.lexendLight12(
            context: context,
            fontSize: 16,
          ).copyWith(color: AppColors.dashboardSubTitleColor),
        ),
      ],
    );
  }
}
