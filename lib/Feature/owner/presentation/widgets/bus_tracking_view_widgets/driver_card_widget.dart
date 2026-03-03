import 'package:flutter/material.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class DriverCardWidget extends StatelessWidget {
  const DriverCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.04),
      decoration: BoxDecoration(
        color: const Color(0xffF9FAFB),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: MediaQuery.sizeOf(context).width * 0.06,
            backgroundImage: const NetworkImage(
              "https://randomuser.me/api/portraits/men/32.jpg",
            ),
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sarah Jenkins",
                  style: AppTextStyles.lexendBold40(
                    context: context,
                    fontSize: 16,
                  ).copyWith(color: Colors.black),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.003),
                Text(
                  "⭐ 4.9 • Driver since 2021",
                  style: AppTextStyles.lexendMedium16(
                    context: context,
                    fontSize: 12,
                  ).copyWith(color: const Color(0xff6B7280)),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined, color: Color(0xff7311D4)),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff7311D4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              "Call",
              style: AppTextStyles.lexendBold40(
                context: context,
                fontSize: 14,
              ).copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
