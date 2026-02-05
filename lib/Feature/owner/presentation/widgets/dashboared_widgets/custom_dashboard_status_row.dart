import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/owner_dashboard_status_model.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_dashboard_status_container.dart';

class CustomDashboardStatusRow extends StatelessWidget {
  const CustomDashboardStatusRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Expanded(
          child: Padding(
            padding: index == 2
                ? EdgeInsets.zero
                : EdgeInsets.only(
                    right: MediaQuery.sizeOf(context).width * 0.02,
                  ),
            child: CustomDashboardStatusContainer(
              ownerDashboardStatusModel: ownerDashboardStatusItems[index],
            ),
          ),
        ),
      ),
    );
  }
}
