import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/nursery_details_models.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNurseryDetailsStatCard extends StatelessWidget {
  const CustomNurseryDetailsStatCard({super.key, required this.card});

  final NurseryDetailsOverviewCardModel card;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.03),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(
                  MediaQuery.sizeOf(context).width * 0.018,
                ),
                decoration: BoxDecoration(
                  color: card.iconBackground,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(card.icon, color: card.accentColor, size: 18),
              ),
              if (card.badgeText != null) ...[
                const Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width * 0.018,
                    vertical: MediaQuery.sizeOf(context).height * 0.003,
                  ),
                  decoration: BoxDecoration(
                    color: card.accentColor.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    card.badgeText!,
                    style: AppTextStyles.lexendBold40(
                      context: context,
                      fontSize: 12,
                    ).copyWith(color: card.accentColor),
                  ),
                ),
              ],
            ],
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.008),
          Text(
            card.title,
            style: AppTextStyles.lexendMedium16(
              context: context,
              fontSize: 12,
            ).copyWith(color: AppColors.dashboardSubTitleColor),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.004),
          Text(
            card.value,
            style: AppTextStyles.lexendBold40(
              context: context,
              fontSize: 26,
            ).copyWith(color: AppColors.dashboardTitleColor),
          ),
          Text(
            card.subtitle,
            style: AppTextStyles.lexendRegular12(
              context: context,
              fontSize: 10,
            ).copyWith(color: AppColors.dashboardSubTitleColor),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
          ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: LinearProgressIndicator(
              value: 0.72,
              minHeight: 4,
              color: card.accentColor,
              backgroundColor: card.accentColor.withValues(alpha: 0.15),
            ),
          ),
        ],
      ),
    );
  }
}
