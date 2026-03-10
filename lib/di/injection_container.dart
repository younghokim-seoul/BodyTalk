import 'package:bodytalk/data/local/local_cache_store.dart';
import 'package:bodytalk/data/remote/dio_service.dart';
import 'package:bodytalk/data/remote/network_service.dart';
import 'package:bodytalk/data/remote/repository/auth_repository.dart';
import 'package:bodytalk/data/remote/repository/curriculum_repository.dart';
import 'package:bodytalk/presentation/detail/detail_view_model.dart';
import 'package:bodytalk/presentation/detail/plan/plan_tab_view_model.dart';
import 'package:bodytalk/presentation/detail/practice/practice_tab_view_model.dart';
import 'package:bodytalk/presentation/detail/submit/submit_tab_view_model.dart';
import 'package:bodytalk/presentation/home/home_view_model.dart';
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
  it.registerLazySingleton<CurriculumRepository>(
    () => CurriculumRepositoryImpl(it<NetworkService>()),
  );

  it.registerFactory(() => SplashViewModel(it<LocalCacheStore>()));
  it.registerFactory(
    () => LoginViewModel(it<LocalCacheStore>(), it<AuthRepository>()),
  );
  it.registerFactory(() => HomeViewModel(it<CurriculumRepository>()));
  it.registerFactory(
    () => DetailViewModel(it<LocalCacheStore>(), it<CurriculumRepository>()),
  );
  it.registerFactory(
    () => PlanTabViewModel(it<CurriculumRepository>(), it<LocalCacheStore>()),
  );
  it.registerFactory(
    () =>
        PracticeTabViewModel(it<CurriculumRepository>(), it<LocalCacheStore>()),
  );
  it.registerFactory(
    () => SubmitTabViewModel(it<CurriculumRepository>(), it<LocalCacheStore>()),
  );
}
