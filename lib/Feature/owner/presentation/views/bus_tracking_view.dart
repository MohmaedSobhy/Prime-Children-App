import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/bus_tracking_view_widgets/bus_tracking_view_body.dart';

class BusTrackingView extends StatelessWidget {
  const BusTrackingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF9FAFA),
      body: SafeArea(child: BusTrackingViewBody()),
    );
  }
}
