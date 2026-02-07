import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_recent_payments_container.dart';

class CustomRecentPaymentsListWidget extends StatelessWidget {
  const CustomRecentPaymentsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        2,
        (index) => Padding(
          padding: EdgeInsets.only(
            bottom: index == 1 ? 0 : MediaQuery.sizeOf(context).height * 0.005,
          ),
          child: const CustomRecentPaymentsContainer(),
        ),
      ),
    );
  }
}
