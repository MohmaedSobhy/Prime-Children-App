import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  final SharedPreferencesWithCache prefs;

  SharedPreferencesService({required this.prefs});

  // 🔹 Keys
  static const _hasSeenOnboarding = 'hasSeenOnboarding';

  // 🔹 Onboarding
  bool get hasSeenOnboarding => prefs.getBool(_hasSeenOnboarding) ?? false;

  Future<void> setHasSeenOnboarding(bool value) async {
    await prefs.setBool(_hasSeenOnboarding, value);
  }

  // 🔹 Clear all
  Future<void> clearAll() async {
    await prefs.clear();
  }
}
