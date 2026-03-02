import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/nursery_details_models.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNurseryDetailsMenuCard extends StatelessWidget {
  const CustomNurseryDetailsMenuCard({super.key, required this.menu});

  final NurseryDetailsMenuModel menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.04),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: AppColors.splashGradient,
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.09,
            height: MediaQuery.sizeOf(context).width * 0.09,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.22),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.restaurant_menu,
              color: Colors.white,
              size: MediaQuery.sizeOf(context).width * 0.06,
            ),
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.035),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menu.mealType,
                  style: AppTextStyles.lexendMedium16(
                    context: context,
                    fontSize: 12,
                  ).copyWith(color: Colors.white70),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.004),
                Text(
                  menu.title,
                  style: AppTextStyles.lexendBold40(
                    context: context,
                    fontSize: 18,
                  ).copyWith(color: Colors.white),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.004),
                Text(
                  menu.subtitle,
                  style: AppTextStyles.lexendRegular12(
                    context: context,
                    fontSize: 12,
                  ).copyWith(color: Colors.white70),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.08,
            height: MediaQuery.sizeOf(context).width * 0.08,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.arrow_forward,
              color: Color(0xFF6C53F7),
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
