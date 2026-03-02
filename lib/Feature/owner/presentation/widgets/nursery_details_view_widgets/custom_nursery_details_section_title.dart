import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNurseryDetailsSectionTitle extends StatelessWidget {
  const CustomNurseryDetailsSectionTitle({
    super.key,
    required this.title,
    this.trailingText,
    this.trailing,
  });

  final String title;
  final String? trailingText;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyles.lexendBold40(
            context: context,
            fontSize: 18,
          ).copyWith(color: AppColors.dashboardTitleColor),
        ),
        const Spacer(),
        if (trailing != null)
          trailing!
        else if (trailingText != null)
          Text(
            trailingText!,
            style: AppTextStyles.lexendSemiBold12(
              context: context,
              fontSize: 14,
            ).copyWith(color: AppColors.primaryColor),
          ),
      ],
    );
  }
}
