import 'package:bodytalk/data/local/local_cache_store.dart';
import 'package:bodytalk/data/remote/model/practice/practice_model.dart'
    as request;
import 'package:bodytalk/data/remote/repository/curriculum_repository.dart';
import 'package:bodytalk/view_model_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'practice_tab_view_model.freezed.dart';

class PracticeTabViewModel extends ViewModelInterface {
  final CurriculumRepository curriculumRepository;
  final LocalCacheStore _localCacheStore;
  final _event = PublishSubject<PracticeTabEvent>();

  Stream<PracticeTabEvent> get event => _event.stream;

  PracticeTabViewModel(this.curriculumRepository, this._localCacheStore);

  Future<void> savePractice({
    required int learningId,
    required int curriculumId,
    required String content,
    required String recognition,
    required String motive,
    required String active,
    required String context,
  }) async {
    final userId = _localCacheStore.getString('access_token')!.trim();

    final result = await curriculumRepository.createPractice(
      param: request.PracticeModel(
        learningId: learningId,
        curriculumId: curriculumId,
        practiceDt: DateTime.now(),
        content: content,
        recognition: recognition,
        motive: motive,
        active: active,
        context: context,
        userId: userId,
      ),
    );

    result.fold(
      (exception) {
        debugPrint('savePractice exception => ${exception.message}');
        sendEvent(PracticeTabEvent.toastMessage(exception.message));
      },
      (_) {
        sendEvent(const PracticeTabEvent.toastMessage('Practice saved.'));
      },
    );
  }

  void sendEvent(PracticeTabEvent event) {
    if (_event.isClosed) return;
    _event.add(event);
  }

  @override
  void disposeAll() {
    if (_event.isClosed) return;
    _event.close();
  }
}

@freezed
sealed class PracticeTabEvent with _$PracticeTabEvent {
  const factory PracticeTabEvent.toastMessage(String message) =
      _PracticeTabToastMessage;
}
