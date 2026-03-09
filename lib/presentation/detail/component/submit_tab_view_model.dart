import 'dart:io';

import 'package:bodytalk/data/local/local_cache_store.dart';
import 'package:bodytalk/data/remote/model/submit/submit_model.dart' as request;
import 'package:bodytalk/data/remote/repository/curriculum_repository.dart';
import 'package:bodytalk/view_model_interface.dart';
import 'package:flutter/foundation.dart';

class SubmitTabViewModel extends ViewModelInterface {
  final CurriculumRepository curriculumRepository;
  final LocalCacheStore _localCacheStore;

  SubmitTabViewModel(this.curriculumRepository, this._localCacheStore);

  Future<void> submitAssignment({
    required int learningId,
    required int curriculumId,
    String? question,
    File? video,
  }) async {
    final userId = _localCacheStore.getString('access_token')!.trim();

    final normalizedQuestion = question?.trim();

    final result = await curriculumRepository.createSubmit(
      param: request.SubmitModel(
        learningId: learningId,
        curriculumId: curriculumId,
        userId: userId,
        question: normalizedQuestion == null || normalizedQuestion.isEmpty
            ? null
            : normalizedQuestion,
        video: video,
      ),
    );

    result.fold((exception) {
      debugPrint('submitAssignment exception => ${exception.message}');
    }, (_) {});
  }
}
