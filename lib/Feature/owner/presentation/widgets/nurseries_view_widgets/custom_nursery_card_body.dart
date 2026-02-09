import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/nursery_card_model.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nurseries_view_widgets/custom_nursery_card_item_icon.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nurseries_view_widgets/custom_nursery_card_main_column.dart';

class CustomNurseryCardBody extends StatelessWidget {
  const CustomNurseryCardBody({super.key, required this.item});

  final NurseryCardModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomNurseryCardItemIcon(item: item),
        const SizedBox(width: 12),
        Expanded(child: CustomNurseryCardMainColumn(item: item)),
        const SizedBox(width: 8),
        const Icon(Icons.chevron_right, color: Color(0xFFCBD5E1)),
      ],
    );
  }
}
