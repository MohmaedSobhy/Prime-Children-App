import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/nursery_card_model.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nurseries_view_widgets/custom_nursery_view_list_view.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nurseries_view_widgets/custom_nursery_view_title.dart';

class NurseriesView extends StatelessWidget {
  const NurseriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <NurseryCardModel>[
      const NurseryCardModel(
        name: 'Little Stars Academy',
        status: 'Active',
        statusColor: Color(0xFF1D4ED8),
        address: '123 Maple Avenue, Springfield',
        avatarBackground: Color(0xFFFBD2B0),
        avatarIcon: Icons.diamond_outlined,
        showOnlineDot: true,
      ),
      const NurseryCardModel(
        name: 'Bright Futures EL',
        status: 'Active',
        statusColor: Color(0xFF1D4ED8),
        address: '456 Oak Street, Springfield',
        avatarBackground: Color(0xFFCFE5D6),
        avatarIcon: Icons.park_outlined,
        showOnlineDot: true,
      ),
      const NurseryCardModel(
        name: 'Sunny Days Care',
        status: 'Maintenance',
        statusColor: Color(0xFF6B7280),
        address: '789 Pine Lane, Springfield',
        avatarBackground: Color(0xFFE5E7EB),
        avatarIcon: Icons.apartment_outlined,
        showOnlineDot: false,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomNurseryViewTitle(),
        const SizedBox(height: 16),
        Expanded(child: CustomNurseiriesViewListView(items: items)),
      ],
    );
  }
}
