import 'package:flutter/material.dart';
import 'package:prime_app/core/routes/app_route.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNurseryDetailsBusCard extends StatelessWidget {
  const CustomNurseryDetailsBusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, AppRoute.busTrackingView),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.035),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: AppColors.splashGradient,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.022),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.18),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.directions_bus_outlined,
                color: Colors.white,
              ),
            ),
            SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Track School Bus',
                    style: AppTextStyles.lexendSemiBold12(
                      context: context,
                      fontSize: 18,
                    ).copyWith(color: Colors.white),
                  ),
                  Text(
                    '3 Buses Active',
                    style: AppTextStyles.lexendMedium16(
                      context: context,
                      fontSize: 12,
                    ).copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.08,
              height: MediaQuery.sizeOf(context).width * 0.08,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.18),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: MediaQuery.sizeOf(context).width * 0.05,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
