import 'package:get_it/get_it.dart';
import 'package:prime_app/core/services/shared_pref_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class GetItServices {
  static final GetIt getIt = GetIt.instance;
  static Future<void> setup() async {
    final sharedPrefs = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(),
    );
    final sharedPrefsService = SharedPreferencesService(prefs: sharedPrefs);
    getIt.registerSingleton<SharedPreferencesService>(sharedPrefsService);
  }
}
