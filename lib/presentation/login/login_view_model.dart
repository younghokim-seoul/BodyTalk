import 'package:bodytalk/data/local/local_cache_store.dart';
import 'package:bodytalk/data/remote/repository/auth_repository.dart';
import 'package:bodytalk/flow/state_flow.dart';
import 'package:bodytalk/view_model_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'login_view_model.freezed.dart';

class LoginViewModel extends ViewModelInterface {
  LoginViewModel(this._localCacheStore, this._authRepository);

  final LocalCacheStore _localCacheStore;
  final AuthRepository _authRepository;
  final _event = PublishSubject<LoginEvent>();
  Stream<LoginEvent> get event => _event.stream;

  final idText = StateFlow<String>(seed: 'student_1');
  final pwText = StateFlow<String>(seed: ' student1!');

  Future<void> login() async {

    if(idText.val == null || pwText.val == null) {
      sendEvent(const LoginEvent.toastMessage('아이디와 비밀번호를 입력해주세요.'));
      return;
    }

    final param = {'user_id': idText.val, 'user_pw': pwText.val};
    final result = await _authRepository.loginUser(param: param);
    result.fold(
      (exception) {
        print('Login exception $exception');
        sendEvent(LoginEvent.toastMessage(exception.message));
      },
      (user) {
        print('Login Success $user');
        sendEvent(const LoginEvent.loginSuccess());
      },
    );
  }


  void onChangedId(String str) => idText.val = str;

  void onChangedPw(String str) => pwText.val = str;

  void sendEvent(LoginEvent event) {
    _event.add(event);
  }

  @override
  void disposeAll() {
    _event.close();
  }
}

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginSuccess() = _LoginSuccess;

  const factory LoginEvent.toastMessage(String message) = _LoginToastMessage;
}
