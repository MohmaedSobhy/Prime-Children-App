import 'package:flutter/material.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class ArrivingCardWidget extends StatelessWidget {
  const ArrivingCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.04),
      decoration: BoxDecoration(
        color: const Color(0xffF8F3FD),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Arriving in 8 mins",
            style: AppTextStyles.lexendBold40(
              context: context,
              fontSize: 24,
            ).copyWith(color: Colors.purple),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
          Text(
            "Nursery Bus A • 1.2 miles away",
            style: AppTextStyles.lexendMedium16(
              context: context,
              fontSize: 14,
            ).copyWith(color: Colors.black),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.radar_outlined,
                  color: Colors.white,
                  size: MediaQuery.sizeOf(context).width * 0.04,
                ),
                label: Text(
                  "Live Path",
                  style: AppTextStyles.lexendSemiBold12(
                    context: context,
                    fontSize: 14,
                  ).copyWith(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff7311D4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffECFDF5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "On Schedule",
                  style: AppTextStyles.lexendSemiBold12(
                    context: context,
                  ).copyWith(color: const Color(0xff059669)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
