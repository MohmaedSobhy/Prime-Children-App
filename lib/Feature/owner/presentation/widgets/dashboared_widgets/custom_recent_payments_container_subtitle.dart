import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomRecentPaymentsContainerSubTitle extends StatelessWidget {
  const CustomRecentPaymentsContainerSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.4,
          child: Text(
            'Little Stars Academy • Toddler Room',
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.lexendRegular12(
              context: context,
            ).copyWith(color: AppColors.dashboardGlobalAlertsSubTitleColor),
          ),
        ),
        Container(
          padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.01),
          height: MediaQuery.sizeOf(context).height * 0.03,
          width: MediaQuery.sizeOf(context).width * 0.15,
          decoration: BoxDecoration(
            color: Color(0xffDCFCE7),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              'Paid',
              style: AppTextStyles.lexendMedium16(
                context: context,
                fontSize: 10,
              ).copyWith(color: Color(0xff15803D)),
            ),
          ),
        ),
      ],
    );
  }
}
