import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class MessageListViewItemAvatar extends StatelessWidget {
  const MessageListViewItemAvatar({
    super.key,
    required this.initials,
    required this.backgroundColor,
    required this.showOnline,
  });

  final String initials;
  final Color backgroundColor;
  final bool showOnline;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.12,
          height: MediaQuery.sizeOf(context).width * 0.12,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              initials,
              style: AppTextStyles.lexendSemiBold12(
                context: context,
                fontSize: 12,
              ).copyWith(color: AppColors.dashboardTitleColor),
            ),
          ),
        ),
        if (showOnline)
          Positioned(
            right: -1,
            bottom: -1,
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.03,
              height: MediaQuery.sizeOf(context).width * 0.03,
              decoration: BoxDecoration(
                color: AppColors.onlineGreen,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          ),
      ],
    );
  }
}
