import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prime_app/Feature/owner/data/models/owner_dashboard_status_model.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomDashboardStatusContainer extends StatelessWidget {
  const CustomDashboardStatusContainer({
    super.key,
    required this.ownerDashboardStatusModel,
  });
  final OwnerDashboardStatusModel ownerDashboardStatusModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.03,
        vertical: MediaQuery.sizeOf(context).height * 0.015,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: MediaQuery.sizeOf(context).width * 0.05,
            child: SvgPicture.asset(
              ownerDashboardStatusModel.iconPath,
              width: MediaQuery.sizeOf(context).width * 0.05,
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
          Text(
            ownerDashboardStatusModel.title,
            style: AppTextStyles.lexendBold40(
              context: context,
              fontSize: 18,
            ).copyWith(color: AppColors.dashboardTitleColor),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

          Text(
            ownerDashboardStatusModel.subtitle.toUpperCase(),
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.lexendMedium16(
              context: context,
              fontSize: 14,
            ).copyWith(color: AppColors.dashboardSubTitleColor),
          ),
        ],
      ),
    );
  }
}
