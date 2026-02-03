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
  String loginSubtitle = 'Care for your child. Anywhere.';
  String phoneNumberTextFieldTitle = 'Phone Number';
  String phonenumberTextFieldHint = '+20 10 0000 0000';
  String passwordTextFieldTitle = 'Password';
  String passwordTextFieldHint = 'Enter Your Password';
  String loginButtonTitle = 'Login';
  String dontHaveAccount = 'Don\'t have an account?';
  String contactYourNursery = 'Contact Your Nursery';
  String termsOfService = 'Terms of Service';
  String privacyPolicy = 'Privacy Policy';
}
