import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/nursery_details_models.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nursery_details_view_widgets/custom_nursery_details_stat_card.dart';

class CustomNurseryDetailsStatsRow extends StatelessWidget {
  const CustomNurseryDetailsStatsRow({super.key, required this.cards});

  final List<NurseryDetailsOverviewCardModel> cards;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomNurseryDetailsStatCard(card: cards[0])),
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
        Expanded(child: CustomNurseryDetailsStatCard(card: cards[1])),
      ],
    );
  }
}
