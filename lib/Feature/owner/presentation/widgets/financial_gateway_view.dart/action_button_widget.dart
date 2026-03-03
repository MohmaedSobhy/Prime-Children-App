import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class ActionButtonWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  const ActionButtonWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width * 0.25,
      padding: EdgeInsets.symmetric(vertical: size.height * 0.015),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: size.width * 0.05,
            backgroundColor: const Color(0xffEFF6FF),
            child: Icon(icon, color: AppColors.primaryColor),
          ),
          SizedBox(height: size.height * 0.01),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.lexendBold40(
              context: context,
              fontSize: 10,
            ).copyWith(color: AppColors.dashboardSubTitleColor),
          ),
        ],
      ),
    );
  }
}
