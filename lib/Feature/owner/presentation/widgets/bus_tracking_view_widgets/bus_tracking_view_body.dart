import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/bus_tracking_view_widgets/bus_tracking_app_bar.dart';

import 'package:prime_app/Feature/owner/presentation/widgets/bus_tracking_view_widgets/map_section_widget.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/bus_tracking_view_widgets/tracking_draggable_sheet.dart';

class BusTrackingViewBody extends StatelessWidget {
  const BusTrackingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        MapSectionWidget(),
        BusTrackingAppBar(),
        TrackingDraggableSheet(),
      ],
    );
  }
}
