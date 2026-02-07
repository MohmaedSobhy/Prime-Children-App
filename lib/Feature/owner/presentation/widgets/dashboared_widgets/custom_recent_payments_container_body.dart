import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_recent_payments_container_subtitle.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/dashboared_widgets/custom_recent_payments_container_title.dart';

class CustomRecentPaymentsContainerBody extends StatelessWidget {
  const CustomRecentPaymentsContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.1,
          height: MediaQuery.sizeOf(context).width * 0.1,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomRecentPaymentsContainerTitle(),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.005),
              const CustomRecentPaymentsContainerSubTitle(),
            ],
          ),
        ),
      ],
    );
  }
}
