import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_global_alerts_container_body.dart';

class CustomGlobalAlertsContainer extends StatelessWidget {
  const CustomGlobalAlertsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.05),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const CustomGlobalAlertsContainerBody(),
    );
  }
}
