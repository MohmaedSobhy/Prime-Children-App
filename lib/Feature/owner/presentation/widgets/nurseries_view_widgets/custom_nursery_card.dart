import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/nursery_card_model.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nurseries_view_widgets/custom_nursery_card_body.dart';
import 'package:prime_app/core/routes/app_route.dart';

class NurseryCard extends StatelessWidget {
  final NurseryCardModel item;

  const NurseryCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoute.nurseryDetailView);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0F111827),
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: CustomNurseryCardBody(item: item),
      ),
    );
  }
}
