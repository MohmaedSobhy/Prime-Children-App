import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prime_app/Feature/owner/data/models/owner_notification_model.dart';
import 'package:prime_app/Feature/owner/presentation/controller/owner_alerts_view_cubit/owner_alerts_view_cubit.dart';
import 'package:prime_app/Feature/owner/presentation/controller/owner_alerts_view_cubit/owner_alerts_view_states.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/notification_view_widgets/custom_notification_card_list_builder.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/notification_view_widgets/custom_notifications_view_alerts_tab.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/notification_view_widgets/custom_notifications_view_app_bar.dart';

class OwnerNotificationsView extends StatelessWidget {
  const OwnerNotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OwnerAlertsViewCubit(),
      child: BlocBuilder<OwnerAlertsViewCubit, OwnerAlertsViewStates>(
        builder: (context, state) {
          final cubit = OwnerAlertsViewCubit.get(context);
          final sections = _alertSectionsByTab(cubit.selectedTabIndex);
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomNotificationsViewAppBar(),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                CustomNotificationsViewAlertsTabs(
                  selectedIndex: cubit.selectedTabIndex,
                  onChanged: cubit.changeTab,
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),
                CustomNotificationCardListBuilder(sections: sections[0]),
              ],
            ),
          );
        },
      ),
    );
  }
}

List<OwnerNotificationModel> _alertSectionsByTab(int index) {
  switch (index) {
    case 0:
      return [
        const OwnerNotificationModel(
          title: 'NEW',
          items: [
            NotificationItem(
              icon: Icons.warning_amber_rounded,
              iconBackground: Color(0xffFEE2E2),
              iconColor: Color(0xffDC2626),
              title: 'Security Check',
              subtitle: 'A new device signed in to your account.',
              time: '2m ago',
              isUnread: true,
            ),
            NotificationItem(
              icon: Icons.info_outline,
              iconBackground: Color(0xffE0E7FF),
              iconColor: Color(0xff4F46E5),
              title: 'Policy Update',
              subtitle: 'We updated our attendance policy for 2026.',
              time: '18m ago',
              isUnread: true,
            ),
          ],
        ),
        const OwnerNotificationModel(
          title: 'EARLIER',
          items: [
            NotificationItem(
              icon: Icons.payments_outlined,
              iconBackground: Color(0xffDCFCE7),
              iconColor: Color(0xff16A34A),
              title: 'Invoice Paid',
              subtitle: 'Payment for January has been received.',
              time: '1h ago',
              isUnread: false,
            ),
          ],
        ),
      ];
    case 1:
      return const [
        OwnerNotificationModel(
          title: 'NEW',
          items: [
            NotificationItem(
              avatarText: 'MS',
              avatarColor: Color(0xffF1F5F9),
              icon: Icons.message,
              iconBackground: Color(0xffDBEAFE),
              iconColor: Color(0xff2563EB),
              title: 'Mrs. Smith',
              subtitle:
                  '"Hi! Please remember to bring a sun hat for Liam tomorrow..."',
              time: '12m ago',
              isUnread: true,
            ),
            NotificationItem(
              avatarText: 'JD',
              avatarColor: Color(0xffF8FAFC),
              icon: Icons.message,
              iconBackground: Color(0xffDBEAFE),
              iconColor: Color(0xff2563EB),
              title: 'Mr. Johnson',
              subtitle: '"Thanks for the update about the field trip."',
              time: '34m ago',
              isUnread: false,
            ),
          ],
        ),
      ];
    default:
      return const [
        OwnerNotificationModel(
          title: 'NEW',
          items: [
            NotificationItem(
              icon: Icons.restaurant,
              iconBackground: Color(0xffDCFCE7),
              iconColor: Color(0xff16A34A),
              title: 'Lunch Update',
              subtitle: 'Liam finished his lunch (Pasta and Steamed Broccoli).',
              time: '5m ago',
              isUnread: true,
            ),
          ],
        ),
        OwnerNotificationModel(
          title: 'EARLIER',
          items: [
            NotificationItem(
              icon: Icons.directions_bus,
              iconBackground: Color(0xffFEF3C7),
              iconColor: Color(0xffF59E0B),
              title: 'Bus Update',
              subtitle: 'The nursery bus is 5 minutes away from your location.',
              time: '45m ago',
              isUnread: false,
            ),
          ],
        ),
      ];
  }
}
