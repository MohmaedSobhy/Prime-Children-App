import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_recent_payments_container_body.dart';

class CustomRecentPaymentsContainer extends StatelessWidget {
  const CustomRecentPaymentsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.04),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const CustomRecentPaymentsContainerBody(),
    );
  }
}
