import 'package:bodytalk/presentation/splash/splash_view_model.dart';
import 'package:get_it/get_it.dart';

final it = GetIt.instance;


Future<void> init() async {
  it.registerFactory(() => SplashViewModel());
}