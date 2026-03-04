import 'package:bodytalk/flow/state_flow.dart';
import 'package:bodytalk/view_model_interface.dart';

enum SplashEvent { GO_MAIN, GO_LOGIN }

class SplashViewModel extends ViewModelInterface {
  final splashEvent = StateFlow<SplashEvent>();

  final accessToken = StateFlow<String?>();

  @override
  void loadState() async {
    await Future.delayed(const Duration(seconds: 2));
    final currentToken = accessToken.val;

    if (currentToken != null && currentToken.toString().isNotEmpty) {
      splashEvent.val = SplashEvent.GO_MAIN;
    } else {
      splashEvent.val = SplashEvent.GO_LOGIN;
    }
  }

  @override
  void disposeAll() {
    splashEvent.close();
    accessToken.close();
  }
}
