import 'package:bodytalk/data/local/local_cache_store.dart';
import 'package:bodytalk/data/remote/model/practice/practice_model.dart'
    as request;
import 'package:bodytalk/data/remote/repository/curriculum_repository.dart';
import 'package:bodytalk/view_model_interface.dart';
import 'package:flutter/foundation.dart';

class PracticeTabViewModel extends ViewModelInterface {
  final CurriculumRepository curriculumRepository;
  final LocalCacheStore _localCacheStore;

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

    result.fold((exception) {
      debugPrint('savePractice exception => ${exception.message}');
    }, (_) {});
  }
}
