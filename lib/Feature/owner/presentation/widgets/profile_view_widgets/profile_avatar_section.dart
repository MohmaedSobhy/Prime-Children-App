import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class ProfileAvatarSection extends StatelessWidget {
  const ProfileAvatarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.22,
              height: MediaQuery.sizeOf(context).width * 0.22,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFE5E7EB),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.07,
              height: MediaQuery.sizeOf(context).width * 0.07,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.edit, size: 14, color: Colors.white),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),
        Text(
          'Alex Thompson',
          style: AppTextStyles.lexendSemiBold12(
            context: context,
            fontSize: 16,
          ).copyWith(color: AppColors.dashboardTitleColor),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.004),
        Text(
          'Senior Administrator',
          style: AppTextStyles.lexendRegular12(
            context: context,
            fontSize: 12,
          ).copyWith(color: AppColors.primaryColor),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.003),
        Text(
          'PRIME Member since Jan 2023',
          style: AppTextStyles.lexendRegular12(
            context: context,
            fontSize: 11,
          ).copyWith(color: AppColors.dashboardSubTitleColor),
        ),
      ],
    );
  }
}
