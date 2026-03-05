import 'package:bodytalk/flow/state_flow.dart';
import 'package:bodytalk/view_model_interface.dart';
import 'package:rxdart/rxdart.dart';

enum SplashEvent { GO_MAIN, GO_LOGIN }

class SplashViewModel extends ViewModelInterface {
  final _event = PublishSubject<SplashEvent>();
  Stream<SplashEvent> get event => _event.stream;

  final accessToken = StateFlow<String?>();

  @override
  void loadState() async {
    await Future.delayed(const Duration(seconds: 2));
    final currentToken = accessToken.val;

    if (currentToken != null && currentToken.toString().isNotEmpty) {
      sendEvent(SplashEvent.GO_MAIN);
    } else {
      sendEvent(SplashEvent.GO_LOGIN);
    }
  }

  void sendEvent(SplashEvent event) {
    _event.add(event);
  }

  @override
  void disposeAll() {
    _event.close();
    accessToken.close();
  }
}
