import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/nursery_details_models.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNurseryDetailsActivityList extends StatelessWidget {
  const CustomNurseryDetailsActivityList({super.key, required this.items});

  final List<NurseryDetailsActivityModel> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (item) => Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.sizeOf(context).height * 0.012,
              ),
              child: Container(
                padding: EdgeInsets.all(
                  MediaQuery.sizeOf(context).width * 0.03,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(
                        MediaQuery.sizeOf(context).width * 0.017,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEFFAF2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.wb_sunny_outlined,
                        color: AppColors.onlineGreen,
                        size: 18,
                      ),
                    ),
                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.028),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: AppTextStyles.lexendMedium16(
                              context: context,
                            ).copyWith(color: AppColors.dashboardTitleColor),
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.004,
                          ),
                          Text(
                            item.timeRange,
                            style: AppTextStyles.lexendRegular12(
                              context: context,
                              fontSize: 12,
                            ).copyWith(color: AppColors.dashboardSubTitleColor),
                          ),
                        ],
                      ),
                    ),
                    if (item.tag != null)
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.sizeOf(context).width * 0.022,
                          vertical: MediaQuery.sizeOf(context).height * 0.005,
                        ),
                        decoration: BoxDecoration(
                          color: item.tagBackgroundColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          item.tag!,
                          style: AppTextStyles.lexendBold40(
                            context: context,
                            fontSize: 12,
                          ).copyWith(color: item.tagTextColor),
                        ),
                      )
                    else
                      Icon(
                        item.isDone
                            ? Icons.check_circle
                            : Icons.radio_button_unchecked,
                        color: item.isDone
                            ? AppColors.onlineGreen
                            : const Color(0xFFD1D5DB),
                        size: MediaQuery.sizeOf(context).width * 0.05,
                      ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
