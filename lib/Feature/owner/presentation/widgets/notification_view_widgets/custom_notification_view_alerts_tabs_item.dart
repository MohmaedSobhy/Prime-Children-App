import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNotificationViewAlertsTabsItem extends StatelessWidget {
  const CustomNotificationViewAlertsTabsItem({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * 0.012,
          ),
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xffEEF2FF) : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.lexendMedium16(context: context, fontSize: 12)
                .copyWith(
                  color: isSelected
                      ? AppColors.primaryColor
                      : AppColors.dashboardSubTitleColor,
                ),
          ),
        ),
      ),
    );
  }
}
