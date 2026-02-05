import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomTermsAndPrivacyRow extends StatelessWidget {
  const CustomTermsAndPrivacyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            //todo navigate to terms of service
          },
          child: Text(
            AppString.of(context).termsOfService,
            style: AppTextStyles.lexendRegular12(
              context: context,
            ).copyWith(color: AppColors.loginSubtitleColor),
          ),
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.04),
        Container(
          height: 20,
          width: 1,
          decoration: BoxDecoration(
            color: AppColors.loginSubtitleColor,

            border: Border.all(color: AppColors.loginSubtitleColor),
          ),
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.04),
        InkWell(
          onTap: () {
            //todo navigate to privacy policy
          },
          child: Text(
            AppString.of(context).privacyPolicy,
            style: AppTextStyles.lexendRegular12(
              context: context,
            ).copyWith(color: AppColors.loginSubtitleColor),
          ),
        ),
      ],
    );
  }
}
