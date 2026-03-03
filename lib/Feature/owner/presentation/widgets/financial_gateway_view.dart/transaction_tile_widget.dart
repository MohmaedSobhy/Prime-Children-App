import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class TransactionTileWidget extends StatelessWidget {
  final bool isReceived;
  final String title;
  final String subtitle;
  final String amount;
  final String date;

  const TransactionTileWidget({
    super.key,
    required this.isReceived,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      margin: EdgeInsets.only(bottom: size.height * 0.015),
      padding: EdgeInsets.all(size.width * 0.04),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: isReceived
                ? AppColors.successLight
                : AppColors.errorLight,
            child: Icon(
              size: size.width * 0.06,
              isReceived ? Icons.arrow_downward : Icons.arrow_upward,
              color: isReceived ? AppColors.success : AppColors.error,
            ),
          ),
          SizedBox(width: size.width * 0.04),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.lexendSemiBold12(
                    context: context,
                    fontSize: 14,
                  ).copyWith(color: AppColors.dashboardTitleColor),
                ),
                SizedBox(height: size.height * 0.005),
                Text(
                  subtitle,
                  style: AppTextStyles.lexendRegular12(
                    context: context,
                    fontSize: 12,
                  ).copyWith(color: AppColors.dashboardSubTitleColor),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amount,
                style:
                    AppTextStyles.lexendSemiBold12(
                      context: context,
                      fontSize: 14,
                    ).copyWith(
                      color: isReceived ? AppColors.success : AppColors.error,
                    ),
              ),
              SizedBox(height: size.height * 0.005),
              Text(
                date,
                style: AppTextStyles.lexendRegular12(
                  context: context,
                  fontSize: 11,
                ).copyWith(color: AppColors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
