import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNotificationsViewAppBar extends StatelessWidget {
  const CustomNotificationsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppString.notifications,
          style: AppTextStyles.lexendBold40(
            context: context,
            fontSize: 22,
          ).copyWith(color: AppColors.dashboardGlobalAlertsTitleColor),
        ),
        Text(
          AppString.markAllAsRead,
          style: AppTextStyles.lexendMedium16(
            context: context,
            fontSize: 12,
          ).copyWith(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
