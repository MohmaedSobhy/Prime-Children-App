import 'package:flutter/material.dart';

import 'package:prime_app/Feature/owner/presentation/widgets/financial_gateway_view.dart/financial_gateway_view_body.dart';

class FinancialGatewayView extends StatelessWidget {
  const FinancialGatewayView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: const Color(0xffF6F6F9),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.05,
            vertical: MediaQuery.sizeOf(context).height * 0.025,
          ),
          child: FinancialGatewayViewBody(size: size),
        ),
      ),
    );
  }
}
