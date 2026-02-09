import 'package:flutter/widgets.dart';
import 'package:prime_app/l10n/app_localizations.dart';

class AppString {
  final AppLocalizations _l10n;

  AppString(this._l10n);

  static AppString of(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    assert(
      l10n != null,
      'AppLocalizations is null. Did you forget MaterialApp localization setup?',
    );
    return AppString(AppLocalizations.of(context)!);
  }

  String get serverFailureDefault => _l10n.serverFailureDefault;
  String get serverFailureTimeout => _l10n.serverFailureTimeout;
  String get serverFailureSendTimeout => _l10n.serverFailureSendTimeout;
  String get serverFailureReceiveTimeout => _l10n.serverFailureReceiveTimeout;
  String get serverFailureCancel => _l10n.serverFailureCancel;
  String get serverFailureNoInternet => _l10n.serverFailureNoInternet;
  String get serverFailureInternalServer => _l10n.serverFailureInternalServer;
  String get serverFailureBadGateway => _l10n.serverFailureBadGateway;
  // splash screen
  String get appTitle => _l10n.appTitle;

  String get splashTitle => _l10n.splashTitle;
  String get splashSubTitle => _l10n.splashSubTitle;
  String get version => _l10n.version;
  //on Boarding Screen
  String get onBoardingTitle1 => _l10n.onBoardingTitle1;
  String get onBoardingSubTitle1 => _l10n.onBoardingSubTitle1;
  String get onBoardingTitle2 => _l10n.onBoardingTitle2;
  String get onBoardingSubTitle2 => _l10n.onBoardingSubTitle2;
  String get onBoardingTitle3 => _l10n.onBoardingTitle3;
  String get onBoardingSubTitle3 => _l10n.onBoardingSubTitle3;

  String get next => _l10n.next;
  String get getStarted => _l10n.getStarted;
  //login screen
  String get loginSubtitle => _l10n.loginSubtitle;
  String get phoneNumberTextFieldTitle => _l10n.phoneNumberTextFieldTitle;
  String get phonenumberTextFieldHint => _l10n.phonenumberTextFieldHint;
  String get passwordTextFieldTitle => _l10n.passwordTextFieldTitle;
  String get passwordTextFieldHint => _l10n.passwordTextFieldHint;
  String get loginButtonTitle => _l10n.loginButtonTitle;
  String get dontHaveAccount => _l10n.dontHaveAccount;
  String get contactYourNursery => _l10n.contactYourNursery;
  String get termsOfService => _l10n.termsOfService;
  String get privacyPolicy => _l10n.privacyPolicy;

  //owner screen
  static String dashboard = 'Dashboard';
  static String profile = 'Profile';
  static String notifications = 'Notifications';
  static String messages = 'Messages';
  static String nurseries = 'Nurseries';

  // owner dashboard
  static String welcomeBack = 'Welcome back, Sarah!';
  static String globalDashboard = 'Global Dashboard';
  static String overviewOfNursery = 'Overview of your nursery network';
  static String globalAlerts = 'Global Alerts';
  static String seeAll = 'See All';
  static String recentPayments = 'Recent Payments';

  // owner notification view
  static String markAllAsRead = 'Mark all as read';
  static String system = 'System';
  static String items = 'Items';

  // owner nursery view
  static String myNurseries = 'My Nurseries';
  static String selectALocationToManage = 'Select a location to manage';
}
