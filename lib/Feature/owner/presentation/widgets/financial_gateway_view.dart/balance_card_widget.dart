import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class BalanceCardWidget extends StatelessWidget {
  const BalanceCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(size.width * 0.05),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: AppColors.splashGradient,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.availableBalance,
            style: AppTextStyles.lexendRegular12(
              context: context,
              fontSize: 14,
            ),
          ),
          SizedBox(height: size.height * 0.005),
          Text(
            "\$84,250.00",
            style: AppTextStyles.lexendBold40(
              context: context,
              fontSize: 32,
            ).copyWith(color: Colors.white),
          ),
          SizedBox(height: size.height * 0.015),
          Text(
            AppString.accountNumber,
            style: AppTextStyles.lexendRegular12(
              context: context,
              fontSize: 12,
            ),
          ),
          SizedBox(height: size.height * 0.005),
          Text(
            "•••• •••• •••• 4829",
            style: AppTextStyles.lexendSemiBold12(
              context: context,
              fontSize: 14,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
