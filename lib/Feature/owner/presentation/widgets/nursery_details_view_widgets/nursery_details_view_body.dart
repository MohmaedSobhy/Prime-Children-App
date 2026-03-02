import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/nursery_details_models.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nursery_details_view_widgets/custom_nursery_details_activity_list.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nursery_details_view_widgets/custom_nursery_details_app_bar.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nursery_details_view_widgets/custom_nursery_details_bus_card.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nursery_details_view_widgets/custom_nursery_details_gallery_strip.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nursery_details_view_widgets/custom_nursery_details_hero_card.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nursery_details_view_widgets/custom_nursery_details_menu_card.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nursery_details_view_widgets/custom_nursery_details_section_title.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/nursery_details_view_widgets/custom_nursery_details_stats_row.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';

class NurseryDetailsViewBody extends StatelessWidget {
  final overviewCards = <NurseryDetailsOverviewCardModel>[
    const NurseryDetailsOverviewCardModel(
      title: 'Attendance',
      value: '92%',
      subtitle: '-5%',
      icon: Icons.calendar_today_outlined,
      iconBackground: Color(0xFFE8F8EF),
      accentColor: Color(0xFF10B981),
      badgeText: 'High',
    ),
    const NurseryDetailsOverviewCardModel(
      title: 'Collections',
      value: r'$12k',
      subtitle: r'$2k pending',
      icon: Icons.account_balance_wallet_outlined,
      iconBackground: Color(0xFFF0EAFE),
      accentColor: Color(0xFF7C3AED),
    ),
  ];

  final activities = <NurseryDetailsActivityModel>[
    const NurseryDetailsActivityModel(
      title: 'Morning Assembly',
      timeRange: '8:00 AM - 9:00 AM',
      isDone: true,
    ),
    const NurseryDetailsActivityModel(
      title: 'Lunch Service',
      timeRange: '11:50 AM - 12:30 PM',
      tag: 'Active',
      tagBackgroundColor: Color(0xFFFFF2D9),
      tagTextColor: Color(0xFFB45309),
      isDone: false,
    ),
    const NurseryDetailsActivityModel(
      title: 'Nap Time',
      timeRange: '1:00 PM - 2:50 PM',
      isDone: false,
    ),
  ];

  final galleryImages = <String>[
    'https://picsum.photos/seed/nursery-kids-1/300/240',
    'https://picsum.photos/seed/nursery-kids-2/300/240',
    'https://picsum.photos/seed/nursery-kids-3/300/240',
    'https://picsum.photos/seed/nursery-kids-4/300/240',
  ];

  final menu = const NurseryDetailsMenuModel(
    mealType: 'LUNCH',
    title: 'Grilled Chicken & Veggies',
    subtitle: 'Apple slices for dessert',
  );

  NurseryDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              color: AppColors.primaryColor,
              size: MediaQuery.sizeOf(context).width * 0.06,
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          const CustomNurseryDetailsAppBar(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          const CustomNurseryDetailsHeroCard(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.018),
          CustomNurseryDetailsStatsRow(cards: overviewCards),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.018),
          const CustomNurseryDetailsBusCard(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          CustomNurseryDetailsSectionTitle(
            title: AppString.activityOverview,
            trailingText: AppString.viewAll,
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.014),
          CustomNurseryDetailsActivityList(items: activities),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.005),
          CustomNurseryDetailsSectionTitle(
            title: AppString.sharedGalary,
            trailing: Container(
              width: MediaQuery.sizeOf(context).width * 0.08,
              height: MediaQuery.sizeOf(context).width * 0.08,
              decoration: const BoxDecoration(
                color: Color(0xFFE9E5FF),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                color: AppColors.primaryColor,
                size: MediaQuery.sizeOf(context).width * 0.05,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.012),
          CustomNurseryDetailsGalleryStrip(imageUrls: galleryImages),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          CustomNurseryDetailsSectionTitle(title: AppString.todaysMenu),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.012),
          CustomNurseryDetailsMenuCard(menu: menu),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
        ],
      ),
    );
  }
}
