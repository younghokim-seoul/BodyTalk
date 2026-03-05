import 'package:bodytalk/data/local/local_cache_store.dart';
import 'package:bodytalk/presentation/splash/splash_view_model.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final it = GetIt.instance;

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  it.registerSingleton<SharedPreferences>(sharedPreferences);
  it.registerSingleton<LocalCacheStore>(LocalCacheStore(sharedPreferences));

  it.registerFactory(() => SplashViewModel(it<LocalCacheStore>()));
}
