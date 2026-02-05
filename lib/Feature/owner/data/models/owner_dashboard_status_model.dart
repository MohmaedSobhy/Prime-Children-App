import 'package:prime_app/core/utils/app_icons.dart';

class OwnerDashboardStatusModel {
  final String iconPath;
  final String title;
  final String subtitle;

  OwnerDashboardStatusModel({
    required this.iconPath,
    required this.title,
    required this.subtitle,
  });
}

List<OwnerDashboardStatusModel> ownerDashboardStatusItems = [
  OwnerDashboardStatusModel(
    iconPath: AppIcons.school,
    title: '1,245',
    subtitle: 'Students',
  ),
  OwnerDashboardStatusModel(
    iconPath: AppIcons.checkCircle,
    title: '94%',
    subtitle: 'Attendance',
  ),
  OwnerDashboardStatusModel(
    iconPath: AppIcons.payments,
    title: '\$45.2k',
    subtitle: 'Revenue',
  ),
];
