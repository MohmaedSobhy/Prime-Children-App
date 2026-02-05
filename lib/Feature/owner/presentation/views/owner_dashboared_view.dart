import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prime_app/Feature/owner/data/models/owner_dashboard_status_model.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_daily_nutrition_container.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_dashboard_status_container.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_dashboard_status_row.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_owner_dashboared_app_bar.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/dashboard_title_and_subtitle.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_icons.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class OwnerDashboaredView extends StatelessWidget {
  const OwnerDashboaredView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomOwnerDashboaredAppBar(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
        const DashboardTitleAndSubtitle(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),
        const CustomDashboardStatusRow(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.020),
        const CustomDailyNutritionContainer(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.030),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Global Alerts',
              style: AppTextStyles.lexendBold40(
                context: context,
                fontSize: 18,
              ).copyWith(color: AppColors.dashboardGlobalAlertsTitleColor),
            ),
            InkWell(
              child: Text(
                'See All',
                style: AppTextStyles.lexendBold40(
                  context: context,
                  fontSize: 12,
                ).copyWith(color: AppColors.primaryColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
