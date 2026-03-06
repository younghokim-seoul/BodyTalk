import 'package:bodytalk/data/local/local_cache_store.dart';
import 'package:bodytalk/data/remote/dio_service.dart';
import 'package:bodytalk/data/remote/network_service.dart';
import 'package:bodytalk/data/remote/repository/auth_repository.dart';
import 'package:bodytalk/presentation/login/login_view_model.dart';
import 'package:bodytalk/presentation/splash/splash_view_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final it = GetIt.instance;

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  it.registerSingleton<SharedPreferences>(sharedPreferences);
  it.registerSingleton<LocalCacheStore>(LocalCacheStore(sharedPreferences));

  it.registerLazySingleton<Dio>(() => Dio());
  it.registerLazySingleton<NetworkService>(() => DioService(it<Dio>()));
  it.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(it<NetworkService>(), it<LocalCacheStore>()),
  );

  it.registerFactory(
    () => SplashViewModel(it<LocalCacheStore>()),
  );
  it.registerFactory(
    () => LoginViewModel(it<LocalCacheStore>(), it<AuthRepository>()),
  );
}
