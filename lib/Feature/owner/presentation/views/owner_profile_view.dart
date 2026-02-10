import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/profile_view_widgets/custom_profile_app_bar.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/profile_view_widgets/footer_links.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/profile_view_widgets/profile_avatar_section.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/profile_view_widgets/profile_info_tile.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/profile_view_widgets/profile_toggle_tile.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/profile_view_widgets/section_title.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/profile_view_widgets/sign_out_button.dart';
import 'package:prime_app/core/utils/app_strings.dart';

class OwnerProfileView extends StatelessWidget {
  const OwnerProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomProfileAppBar(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
        const ProfileAvatarSection(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
        SectionTitle(title: AppString.personalInformation),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),
        ProfileInfoTile(
          icon: Icons.email_outlined,
          title: AppString.email,
          subtitle: 'alex.thompson@prime-nursery.com',
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.012),
        ProfileInfoTile(
          icon: Icons.call_outlined,
          title: AppString.phoneNumber,
          subtitle: '+1 (555) 0123-4567',
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
        SectionTitle(title: AppString.notificationPreferences),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),
        ProfileToggleTile(
          icon: Icons.notifications_outlined,
          title: AppString.pushNotifications,
          subtitle: 'Updates on custom attendance',
          value: true,
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.012),
        ProfileToggleTile(
          icon: Icons.insert_drive_file_outlined,
          title: AppString.weeklySummary,
          subtitle: 'Performance and engagement reports',
          value: false,
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
        SectionTitle(title: AppString.security),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),
        ProfileInfoTile(
          icon: Icons.lock_outline,
          title: AppString.changePassword,
          subtitle: 'Last updated 3 months ago',
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.012),
        ProfileToggleTile(
          icon: Icons.face_outlined,
          title: AppString.faceIdSlashBiomerics,
          subtitle: 'Enabled for quick login',
          value: true,
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
        const SignOutButton(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
        const FooterLinks(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
      ],
    );
  }
}
