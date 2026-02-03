// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get serverFailureDefault => 'An unexpected error occurred.';

  @override
  String get serverFailureTimeout => 'Connection timed out.';

  @override
  String get serverFailureSendTimeout => 'Send timeout.';

  @override
  String get serverFailureReceiveTimeout => 'Receive timeout.';

  @override
  String get serverFailureCancel => 'Request cancelled.';

  @override
  String get serverFailureNoInternet => 'No internet connection.';

  @override
  String get serverFailureInternalServer => 'Internal server error.';

  @override
  String get serverFailureBadGateway => 'Bad gateway.';

  @override
  String get appTitle => 'Prime Children App';

  @override
  String get splashTitle => 'Prime';

  @override
  String get splashSubTitle => 'Smart Care';

  @override
  String get version => 'V1.0.0';

  @override
  String get onBoardingTitle1 => 'Empower Your Nursery';

  @override
  String get onBoardingSubTitle1 =>
      'Streamline management and enhance child development with our professional tools.';

  @override
  String get onBoardingTitle2 => 'Build Lasting Trust';

  @override
  String get onBoardingSubTitle2 =>
      'Keep parents connected with real-time updates on meals, naps, and activities.';

  @override
  String get onBoardingTitle3 => 'Care for your child Anywhere';

  @override
  String get onBoardingSubTitle3 =>
      'A premium platform designed for the modern educational environment.';

  @override
  String get next => 'Next';

  @override
  String get getStarted => 'Get Started';
}
