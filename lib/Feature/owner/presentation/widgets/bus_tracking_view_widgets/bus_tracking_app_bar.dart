import 'package:flutter/material.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class BusTrackingAppBar extends StatelessWidget {
  const BusTrackingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF9FCFB),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: IntrinsicHeight(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: MediaQuery.sizeOf(context).width * 0.06,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Text(
                          "Bus Tracking",
                          style: AppTextStyles.lexendBold40(
                            context: context,
                            fontSize: 18,
                          ).copyWith(color: Colors.black),
                        ),
                        Text(
                          "LIVE UPDATES",
                          style: AppTextStyles.lexendSemiBold12(
                            context: context,
                          ).copyWith(color: Colors.purple),
                        ),
                      ],
                    ),
                    const Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.notifications_none,
                        size: MediaQuery.sizeOf(context).width * 0.06,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.010),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffECE4F7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Tracking: Leo's Route",
                    style: AppTextStyles.lexendRegular12(
                      context: context,
                    ).copyWith(color: Colors.purple),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
