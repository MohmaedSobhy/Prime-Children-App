import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @serverFailureDefault.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred.'**
  String get serverFailureDefault;

  /// No description provided for @serverFailureTimeout.
  ///
  /// In en, this message translates to:
  /// **'Connection timed out.'**
  String get serverFailureTimeout;

  /// No description provided for @serverFailureSendTimeout.
  ///
  /// In en, this message translates to:
  /// **'Send timeout.'**
  String get serverFailureSendTimeout;

  /// No description provided for @serverFailureReceiveTimeout.
  ///
  /// In en, this message translates to:
  /// **'Receive timeout.'**
  String get serverFailureReceiveTimeout;

  /// No description provided for @serverFailureCancel.
  ///
  /// In en, this message translates to:
  /// **'Request cancelled.'**
  String get serverFailureCancel;

  /// No description provided for @serverFailureNoInternet.
  ///
  /// In en, this message translates to:
  /// **'No internet connection.'**
  String get serverFailureNoInternet;

  /// No description provided for @serverFailureInternalServer.
  ///
  /// In en, this message translates to:
  /// **'Internal server error.'**
  String get serverFailureInternalServer;

  /// No description provided for @serverFailureBadGateway.
  ///
  /// In en, this message translates to:
  /// **'Bad gateway.'**
  String get serverFailureBadGateway;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Prime Children App'**
  String get appTitle;

  /// No description provided for @splashTitle.
  ///
  /// In en, this message translates to:
  /// **'Prime'**
  String get splashTitle;

  /// No description provided for @splashSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Smart Care'**
  String get splashSubTitle;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'V1.0.0'**
  String get version;

  /// No description provided for @onBoardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'Empower Your Nursery'**
  String get onBoardingTitle1;

  /// No description provided for @onBoardingSubTitle1.
  ///
  /// In en, this message translates to:
  /// **'Streamline management and enhance child development with our professional tools.'**
  String get onBoardingSubTitle1;

  /// No description provided for @onBoardingTitle2.
  ///
  /// In en, this message translates to:
  /// **'Build Lasting Trust'**
  String get onBoardingTitle2;

  /// No description provided for @onBoardingSubTitle2.
  ///
  /// In en, this message translates to:
  /// **'Keep parents connected with real-time updates on meals, naps, and activities.'**
  String get onBoardingSubTitle2;

  /// No description provided for @onBoardingTitle3.
  ///
  /// In en, this message translates to:
  /// **'Care for your child Anywhere'**
  String get onBoardingTitle3;

  /// No description provided for @onBoardingSubTitle3.
  ///
  /// In en, this message translates to:
  /// **'A premium platform designed for the modern educational environment.'**
  String get onBoardingSubTitle3;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @loginSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Care for your child. Anywhere.'**
  String get loginSubtitle;

  /// No description provided for @phoneNumberTextFieldTitle.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumberTextFieldTitle;

  /// No description provided for @phonenumberTextFieldHint.
  ///
  /// In en, this message translates to:
  /// **'+20 10 0000 0000'**
  String get phonenumberTextFieldHint;

  /// No description provided for @passwordTextFieldTitle.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordTextFieldTitle;

  /// No description provided for @passwordTextFieldHint.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Password'**
  String get passwordTextFieldHint;

  /// No description provided for @loginButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginButtonTitle;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// No description provided for @contactYourNursery.
  ///
  /// In en, this message translates to:
  /// **'Contact Your Nursery'**
  String get contactYourNursery;

  /// No description provided for @termsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfService;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
