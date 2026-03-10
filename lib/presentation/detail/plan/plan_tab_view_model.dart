import 'package:bodytalk/data/local/local_cache_store.dart';
import 'package:bodytalk/data/remote/model/plan/create_plan_model.dart';
import 'package:bodytalk/data/remote/repository/curriculum_repository.dart';
import 'package:bodytalk/view_model_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

class PlanTabViewModel extends ViewModelInterface {
  final CurriculumRepository curriculumRepository;
  final LocalCacheStore _localCacheStore;
  final _event = PublishSubject<PlanTabEvent>();

  Stream<PlanTabEvent> get event => _event.stream;

  PlanTabViewModel(this.curriculumRepository, this._localCacheStore);

  Future<void> savePlan({
    required int learningId,
    required int curriculumId,
    required String recognition,
    required String motive,
    required String active,
    required String context,
  }) async {
    final userId = _localCacheStore.getString('access_token')!.trim();

    final result = await curriculumRepository.createPlan(
      param: CreatePlanModel(
        userId: userId,
        learningId: learningId,
        curriculumId: curriculumId,
        recognition: recognition,
        motive: motive,
        active: active,
        context: context,
      ),
    );

    result.fold(
      (exception) {
        debugPrint('savePlan exception => ${exception.message}');
        sendEvent(PlanTabEvent.toastMessage(exception.message));
      },
      (_) {
        sendEvent(const PlanTabEvent.toastMessage('Plan saved.'));
      },
    );
  }

  void sendEvent(PlanTabEvent event) {
    if (_event.isClosed) return;
    _event.add(event);
  }

  @override
  void disposeAll() {
    if (_event.isClosed) return;
    _event.close();
  }
}

sealed class PlanTabEvent {
  const PlanTabEvent();

  const factory PlanTabEvent.toastMessage(String message) =
      _PlanTabToastMessage;

  T when<T>({required T Function(String message) toastMessage}) {
    return switch (this) {
      _PlanTabToastMessage(:final message) => toastMessage(message),
    };
  }
}

final class _PlanTabToastMessage extends PlanTabEvent {
  const _PlanTabToastMessage(this.message);

  final String message;
}
