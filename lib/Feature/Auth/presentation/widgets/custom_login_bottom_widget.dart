import 'package:flutter/material.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/contact_your_nursery_widget.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/custom_no_account_widget.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/custom_terms_and_privacy_row.dart';

class CustomLoginBottomWidget extends StatelessWidget {
  const CustomLoginBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NoAccountWidget(),
        const ContactYourNurseryWidget(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
        const CustomTermsAndPrivacyRow(),
      ],
    );
  }
}
