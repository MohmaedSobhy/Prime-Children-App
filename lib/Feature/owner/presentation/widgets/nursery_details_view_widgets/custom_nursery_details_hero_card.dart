import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNurseryDetailsHeroCard extends StatelessWidget {
  const CustomNurseryDetailsHeroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.04),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppColors.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(
                  MediaQuery.sizeOf(context).width * 0.02,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withValues(alpha: 0.2),
                ),
                child: const Icon(
                  Icons.groups_2_outlined,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.025,
                  vertical: MediaQuery.sizeOf(context).height * 0.004,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withValues(alpha: 0.18),
                ),
                child: Text(
                  '+2 New',
                  style: AppTextStyles.lexendSemiBold12(
                    context: context,
                    fontSize: 10,
                  ).copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.016),
          Text(
            'Total Students',
            style: AppTextStyles.lexendMedium16(
              context: context,
              fontSize: 14,
            ).copyWith(color: Colors.white70),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.005),
          Text(
            '142',
            style: AppTextStyles.lexendBold40(
              context: context,
              fontSize: 36,
            ).copyWith(color: Colors.white),
          ),
          Text(
            'Capacity: 150 Students',
            style: AppTextStyles.lexendRegular12(
              context: context,
              fontSize: 12,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
