import 'package:bodytalk/data/local/local_cache_store.dart';
import 'package:bodytalk/data/remote/model/plan/create_plan_model.dart';
import 'package:bodytalk/data/remote/repository/curriculum_repository.dart';
import 'package:bodytalk/view_model_interface.dart';
import 'package:flutter/foundation.dart';

class PlanTabViewModel extends ViewModelInterface {
  final CurriculumRepository curriculumRepository;
  final LocalCacheStore _localCacheStore;

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

    result.fold((exception) {
      debugPrint('savePlan exception => ${exception.message}');
    }, (_) {});
  }
}
