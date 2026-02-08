import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNotificationCardTail extends StatelessWidget {
  const CustomNotificationCardTail({
    super.key,
    required this.time,
    required this.isUnread,
  });

  final String time;
  final bool isUnread;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          time,
          style: AppTextStyles.lexendMedium16(
            context: context,
            fontSize: 10,
          ).copyWith(color: AppColors.settingIconColor),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.012),
        if (isUnread)
          Container(
            width: MediaQuery.sizeOf(context).width * 0.018,
            height: MediaQuery.sizeOf(context).width * 0.018,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
          ),
      ],
    );
  }
}
