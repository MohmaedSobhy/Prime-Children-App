import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNurseryViewTitle extends StatelessWidget {
  const CustomNurseryViewTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            // TODO : navigate to settings
          },
          child: const Icon(Icons.settings),
        ),
        const SizedBox(height: 8),
        Text(
          AppString.welcomeBack,
          style: AppTextStyles.lexendRegular12(
            context: context,
            fontSize: 12,
          ).copyWith(color: AppColors.dashboardSubTitleColor),
        ),
        const SizedBox(height: 6),
        Text(
          AppString.myNurseries,
          style: AppTextStyles.lexendBold40(
            context: context,
            fontSize: 24,
          ).copyWith(color: AppColors.dashboardTitleColor),
        ),
        const SizedBox(height: 6),
        Text(
          AppString.selectALocationToManage,
          style: AppTextStyles.lexendRegular12(
            context: context,
            fontSize: 13,
          ).copyWith(color: AppColors.dashboardSubTitleColor),
        ),
      ],
    );
  }
}
