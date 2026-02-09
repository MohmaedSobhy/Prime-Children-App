import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomMessageViewAppBar extends StatelessWidget {
  const CustomMessageViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppString.messages,
          style: AppTextStyles.lexendBold40(
            context: context,
            fontSize: 22,
          ).copyWith(color: AppColors.dashboardTitleColor),
        ),
        const Spacer(),
        Container(
          width: MediaQuery.sizeOf(context).width * 0.08,
          height: MediaQuery.sizeOf(context).width * 0.08,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color(0x0F111827),
                blurRadius: 10,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: Icon(
            Icons.edit_outlined,
            color: AppColors.primaryColor,
            size: MediaQuery.sizeOf(context).width * 0.05,
          ),
        ),
      ],
    );
  }
}
