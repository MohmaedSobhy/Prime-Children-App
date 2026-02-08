import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNotificationCardTitleAndSubtitle extends StatelessWidget {
  const CustomNotificationCardTitleAndSubtitle({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.lexendSemiBold12(
            context: context,
            fontSize: 14,
          ).copyWith(color: AppColors.dashboardGlobalAlertsTitleColor),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.005),
        Text(
          subtitle,
          style: AppTextStyles.lexendRegular12(
            context: context,
            fontSize: 12,
          ).copyWith(color: AppColors.dashboardGlobalAlertsSubTitleColor),
        ),
      ],
    );
  }
}
