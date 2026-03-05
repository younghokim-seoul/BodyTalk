import 'package:bodytalk/data/local/local_cache_store.dart';
import 'package:bodytalk/view_model_interface.dart';
import 'package:rxdart/rxdart.dart';

enum SplashEvent { GO_MAIN, GO_LOGIN }

class SplashViewModel extends ViewModelInterface {
  SplashViewModel(this._localCacheStore);

  final LocalCacheStore _localCacheStore;

  final _event = PublishSubject<SplashEvent>();
  Stream<SplashEvent> get event => _event.stream;

  @override
  void loadState() async {
    await Future.delayed(const Duration(seconds: 2));
    final currentToken = _localCacheStore.getString('access_token');

    if (currentToken != null && currentToken.isNotEmpty) {
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
  }
}
