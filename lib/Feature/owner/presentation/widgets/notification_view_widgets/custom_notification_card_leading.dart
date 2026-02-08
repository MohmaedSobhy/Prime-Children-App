import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNotificationCardLeading extends StatelessWidget {
  const CustomNotificationCardLeading({
    super.key,
    required this.icon,
    required this.iconBackground,
    required this.iconColor,
    this.avatarText,
    this.avatarColor,
  });

  final IconData icon;
  final Color iconBackground;
  final Color iconColor;
  final String? avatarText;
  final Color? avatarColor;

  @override
  Widget build(BuildContext context) {
    if (avatarText != null) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            radius: MediaQuery.sizeOf(context).width * 0.06,
            backgroundColor: avatarColor ?? const Color(0xffE2E8F0),
            child: Text(
              avatarText!,
              style: AppTextStyles.lexendSemiBold12(
                context: context,
                fontSize: 12,
              ).copyWith(color: AppColors.dashboardGlobalAlertsTitleColor),
            ),
          ),
          Positioned(
            right: -2,
            bottom: -2,
            child: CircleAvatar(
              radius: MediaQuery.sizeOf(context).width * 0.025,
              backgroundColor: iconBackground,
              child: Icon(
                icon,
                size: MediaQuery.sizeOf(context).width * 0.03,
                color: iconColor,
              ),
            ),
          ),
        ],
      );
    }

    return CircleAvatar(
      radius: MediaQuery.sizeOf(context).width * 0.06,
      backgroundColor: iconBackground,
      child: Icon(
        icon,
        color: iconColor,
        size: MediaQuery.sizeOf(context).width * 0.05,
      ),
    );
  }
}
