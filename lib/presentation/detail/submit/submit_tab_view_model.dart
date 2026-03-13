import 'dart:io';

import 'package:bodytalk/data/local/local_cache_store.dart';
import 'package:bodytalk/data/remote/model/learning/learning_detail_model.dart'
    as learning;
import 'package:bodytalk/data/remote/model/submit/submit_model.dart' as request;
import 'package:bodytalk/data/remote/repository/curriculum_repository.dart';
import 'package:bodytalk/view_model_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'submit_tab_view_model.freezed.dart';

class SubmitTabViewModel extends ViewModelInterface {
  final CurriculumRepository curriculumRepository;
  final LocalCacheStore _localCacheStore;
  final _event = PublishSubject<SubmitTabEvent>();

  Stream<SubmitTabEvent> get event => _event.stream;

  SubmitTabViewModel(this.curriculumRepository, this._localCacheStore);

  Future<learning.SubmitModel?> submitAssignment({
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

    return result.fold(
      (exception) {
        debugPrint('submitAssignment exception => ${exception.message}');
        sendEvent(SubmitTabEvent.toastMessage(exception.message));
        return null;
      },
      (response) {
        sendEvent(const SubmitTabEvent.toastMessage('Assignment submitted.'));
        return learning.SubmitModel(
          userId: response.userId,
          learningId: response.learningId,
          curriculumId: response.curriculumId,
          submitId: response.submitId,
          video: response.video,
          question: response.question,
        );
      },
    );
  }

  void sendEvent(SubmitTabEvent event) {
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
sealed class SubmitTabEvent with _$SubmitTabEvent {
  const factory SubmitTabEvent.toastMessage(String message) =
      _SubmitTabToastMessage;
}
