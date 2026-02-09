import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/nursery_card_model.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nurseries_view_widgets/custom_nursery_card.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nurseries_view_widgets/custom_skelton_card.dart';

class CustomNurseiriesViewListView extends StatelessWidget {
  const CustomNurseiriesViewListView({super.key, required this.items});

  final List<NurseryCardModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length + 1,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        if (index == items.length) {
          return const SkeltonCard();
        }
        return NurseryCard(item: items[index]);
      },
    );
  }
}
