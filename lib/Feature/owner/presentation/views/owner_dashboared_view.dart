import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_daily_nutrition_container.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_dashboard_status_row.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_global_alerts_list_widget.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_global_alerts_title.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_owner_dashboared_app_bar.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_recent_payments_list_widget.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_recent_payments_title.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/dashboard_title_and_subtitle.dart';

class OwnerDashboaredView extends StatelessWidget {
  const OwnerDashboaredView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          const CustomGlobalAlertsTitleWidget(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.020),

          const CustomGlobalAlertsListWidget(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.020),
          const CustomRecentPaymentsTitle(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.020),
          const CustomRecentPaymentsListWidget(),
        ],
      ),
    );
  }
}
