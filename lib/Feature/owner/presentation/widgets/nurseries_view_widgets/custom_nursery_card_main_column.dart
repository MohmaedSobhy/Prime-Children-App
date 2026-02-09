import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/nursery_card_model.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNurseryCardMainColumn extends StatelessWidget {
  const CustomNurseryCardMainColumn({super.key, required this.item});

  final NurseryCardModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.lexendSemiBold12(
            context: context,
            fontSize: 14,
          ).copyWith(color: AppColors.dashboardTitleColor),
        ),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: item.statusColor.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            item.status.toUpperCase(),
            style: AppTextStyles.lexendSemiBold12(
              context: context,
              fontSize: 10,
            ).copyWith(color: item.statusColor),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          item.address,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.lexendRegular12(
            context: context,
            fontSize: 12,
          ).copyWith(color: AppColors.dashboardSubTitleColor),
        ),
      ],
    );
  }
}
