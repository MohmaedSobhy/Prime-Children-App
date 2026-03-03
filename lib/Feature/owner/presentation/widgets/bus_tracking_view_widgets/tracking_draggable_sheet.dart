import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/bus_tracking_view_widgets/tracking_scrollable_sheet_body.dart';

class TrackingDraggableSheet extends StatelessWidget {
  const TrackingDraggableSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: DraggableScrollableSheet(
        expand: false,
        snap: true,
        snapSizes: [0.40, 0.85],
        builder: (context, scrollController) {
          return TrackingScrollableSheetBody(
            scrollController: scrollController,
          );
        },
      ),
    );
  }
}
