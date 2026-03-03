import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomFinancialGatewayAppbar extends StatelessWidget {
  const CustomFinancialGatewayAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
            size: MediaQuery.sizeOf(context).width * 0.06,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              AppString.refinedFinancialGateway,
              style: AppTextStyles.lexendSemiBold12(
                context: context,
                fontSize: 14,
              ).copyWith(color: AppColors.dashboardTitleColor),
            ),
          ),
        ),
      ],
    );
  }
}
