import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class MessageTabItem extends StatelessWidget {
  const MessageTabItem({
    super.key,
    required this.title,
    this.isSelected = false,
  });

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.02),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.04,
        vertical: MediaQuery.sizeOf(context).height * 0.007,
      ),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryColor : Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Text(
        title,
        style: AppTextStyles.lexendSemiBold12(context: context, fontSize: 12)
            .copyWith(
              color: isSelected
                  ? Colors.white
                  : AppColors.dashboardSubTitleColor,
            ),
      ),
    );
  }
}
