import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class FooterLinks extends StatelessWidget {
  const FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppString.of(context).version,
          style: AppTextStyles.lexendRegular12(
            context: context,
            fontSize: 10,
          ).copyWith(color: AppColors.dashboardSubTitleColor),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.006),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppString.of(context).privacyPolicy,
              style: AppTextStyles.lexendRegular12(
                context: context,
                fontSize: 10,
              ).copyWith(color: AppColors.primaryColor),
            ),
            const SizedBox(width: 6),
            const Text(
              '•',
              style: TextStyle(color: AppColors.dashboardSubTitleColor),
            ),
            const SizedBox(width: 6),
            Text(
              AppString.of(context).termsOfService,
              style: AppTextStyles.lexendRegular12(
                context: context,
                fontSize: 10,
              ).copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
      ],
    );
  }
}
