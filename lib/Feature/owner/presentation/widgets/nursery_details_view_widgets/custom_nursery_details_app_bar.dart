import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNurseryDetailsAppBar extends StatelessWidget {
  const CustomNurseryDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: MediaQuery.sizeOf(context).width * 0.06,
            backgroundImage: const NetworkImage(
              'https://picsum.photos/seed/owner-sarah/120/120',
            ),
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning, Sarah',
                  style: AppTextStyles.lexendBold40(
                    context: context,
                    fontSize: 18,
                  ).copyWith(color: AppColors.dashboardTitleColor),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.003),
                Text(
                  'Green Valley Nursery',
                  style: AppTextStyles.lexendBold40(
                    context: context,
                    fontSize: 14,
                  ).copyWith(color: AppColors.nurseryDetailsSubTitleColor),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.10,
            height: MediaQuery.sizeOf(context).width * 0.10,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.notifications_none_rounded),
          ),
        ],
      ),
    );
  }
}
