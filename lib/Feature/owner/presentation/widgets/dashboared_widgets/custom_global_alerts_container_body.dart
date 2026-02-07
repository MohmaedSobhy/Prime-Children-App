import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';
import 'package:prime_app/core/widgets/responsive_text.dart';

class CustomGlobalAlertsContainerBody extends StatelessWidget {
  const CustomGlobalAlertsContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Baseline(
          baseline: ResponsiveText.sp(context, 14), // match title font size
          baselineType: TextBaseline.alphabetic,
          child: CircleAvatar(
            radius: MediaQuery.sizeOf(context).width * 0.015,
            backgroundColor: Colors.red,
          ),
        ),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Urgent: Low Staffing Ratio',
              style: AppTextStyles.lexendSemiBold12(
                context: context,
                fontSize: 14,
              ).copyWith(color: AppColors.dashboardGlobalAlertsTitleColor),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.005),
            Text(
              'Little Stars Academy • Toddler Room',
              style: AppTextStyles.lexendRegular12(
                context: context,
              ).copyWith(color: AppColors.dashboardGlobalAlertsSubTitleColor),
            ),
          ],
        ),

        const Spacer(),

        Text(
          '12m ago',
          style: AppTextStyles.lexendMedium16(
            context: context,
            fontSize: 10,
          ).copyWith(color: AppColors.settingIconColor),
        ),
      ],
    );
  }
}
