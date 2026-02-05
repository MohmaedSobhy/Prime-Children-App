// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get serverFailureDefault => 'حدث خطأ غير متوقع.';

  @override
  String get serverFailureTimeout => 'انتهت مهلة الاتصال.';

  @override
  String get serverFailureSendTimeout => 'انتهت مهلة الإرسال.';

  @override
  String get serverFailureReceiveTimeout => 'انتهت مهلة الاستقبال.';

  @override
  String get serverFailureCancel => 'تم إلغاء الطلب.';

  @override
  String get serverFailureNoInternet => 'لا يوجد اتصال بالإنترنت.';

  @override
  String get serverFailureInternalServer => 'خطأ في الخادم الداخلي.';

  @override
  String get serverFailureBadGateway => 'بوابة غير صالحة.';

  @override
  String get appTitle => 'تطبيق برايم للأطفال';

  @override
  String get splashTitle => 'برايم';

  @override
  String get splashSubTitle => 'رعاية ذكية';

  @override
  String get version => 'V1.0.0';

  @override
  String get onBoardingTitle1 => 'طوّر حضانتك';

  @override
  String get onBoardingSubTitle1 =>
      'نظّم الإدارة وحسّن نمو الأطفال باستخدام أدوات احترافية.';

  @override
  String get onBoardingTitle2 => 'ابنِ ثقة مستمرة';

  @override
  String get onBoardingSubTitle2 =>
      'ابقِ أولياء الأمور على اطلاع دائم بالوجبات والنوم والأنشطة.';

  @override
  String get onBoardingTitle3 => 'اعتنِ بطفلك من أي مكان';

  @override
  String get onBoardingSubTitle3 =>
      'منصة مميزة مصممة للبيئة التعليمية الحديثة.';

  @override
  String get next => 'التالي';

  @override
  String get getStarted => 'ابدأ';

  @override
  String get loginSubtitle => 'اعتنِ بطفلك من أي مكان';

  @override
  String get phoneNumberTextFieldTitle => 'رقم الهاتف';

  @override
  String get phonenumberTextFieldHint => '+20 10 0000 0000';

  @override
  String get passwordTextFieldTitle => 'كلمة المرور';

  @override
  String get passwordTextFieldHint => 'أدخل كلمة المرور';

  @override
  String get loginButtonTitle => 'تسجيل الدخول';

  @override
  String get dontHaveAccount => 'ليس لديك حساب؟';

  @override
  String get contactYourNursery => 'تواصل مع الحضانة';

  @override
  String get termsOfService => 'شروط الاستخدام';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';
}
