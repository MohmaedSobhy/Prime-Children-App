import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/nursery_card_model.dart';
import 'package:prime_app/core/theme/app_colors.dart';

class CustomNurseryCardItemIcon extends StatelessWidget {
  const CustomNurseryCardItemIcon({super.key, required this.item});

  final NurseryCardModel item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.12,
          height: MediaQuery.sizeOf(context).width * 0.12,
          decoration: BoxDecoration(
            color: item.avatarBackground,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            item.avatarIcon,
            color: AppColors.dashboardSubTitleColor,
            size: MediaQuery.sizeOf(context).width * 0.07,
          ),
        ),
        if (item.showOnlineDot)
          Positioned(
            right: -2,
            bottom: -2,
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.03,
              height: MediaQuery.sizeOf(context).width * 0.03,
              decoration: BoxDecoration(
                color: const Color(0xFF22C55E),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          ),
      ],
    );
  }
}
