import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_icons.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomDailyNutritionContainer extends StatelessWidget {
  const CustomDailyNutritionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.04),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: AppColors.splashGradient,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Daily Nutrition',
                style: AppTextStyles.lexendSemiBold12(
                  context: context,
                ).copyWith(color: AppColors.nutritionContainerTitleColor),
              ),
              Text(
                '856',
                style: AppTextStyles.lexendBold40(
                  context: context,
                  fontSize: 30,
                ).copyWith(color: Colors.white),
              ),
              Text(
                'Total meals served today',
                style: AppTextStyles.lexendMedium16(
                  context: context,
                  fontSize: 14,
                ).copyWith(color: AppColors.nutritionContainerTitleColor),
              ),
            ],
          ),
          Container(
            height: MediaQuery.sizeOf(context).width * 0.15,
            width: MediaQuery.sizeOf(context).width * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.nutritionContainerIconBackgroundColor,
            ),
            child: Center(child: SvgPicture.asset(AppIcons.fork)),
          ),
        ],
      ),
    );
  }
}
