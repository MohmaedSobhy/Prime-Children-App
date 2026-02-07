import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_global_alerts_container.dart';

class CustomGlobalAlertsListWidget extends StatelessWidget {
  const CustomGlobalAlertsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        2,
        (index) => Padding(
          padding: EdgeInsets.only(
            bottom: index == 1 ? 0 : MediaQuery.sizeOf(context).height * 0.015,
          ),
          child: const CustomGlobalAlertsContainer(),
        ),
      ),
    );
  }
}
