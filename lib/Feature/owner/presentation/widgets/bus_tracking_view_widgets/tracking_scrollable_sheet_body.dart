import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/bus_tracking_view_widgets/arriving_card_widget.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/bus_tracking_view_widgets/driver_card_widget.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/bus_tracking_view_widgets/stop_info_widget.dart';

class TrackingScrollableSheetBody extends StatelessWidget {
  const TrackingScrollableSheetBody({
    super.key,
    required this.scrollController,
  });
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.05,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          Container(
            width: MediaQuery.sizeOf(context).width * 0.1,
            height: MediaQuery.sizeOf(context).height * 0.005,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          Expanded(
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ArrivingCardWidget(),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                  const StopInfoWidget(
                    previousStopName: "Main Gate Exit",
                    previousStopTime: "Left at 16:15",
                    currentStopName: "Your Stop: Willow Ave",
                    scheduledTime: "16:30",
                    actualTime: "16:28",
                    statusText: "2M EARLY",
                    statusColor: Colors.green,
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                  const DriverCardWidget(),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
