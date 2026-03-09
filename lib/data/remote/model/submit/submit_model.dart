import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_model.freezed.dart';

@freezed
abstract class SubmitModel with _$SubmitModel {
  const SubmitModel._();

  const factory SubmitModel({
    @JsonKey(name: 'learning_id') required int learningId,
    @JsonKey(name: 'curriculum_id') required int curriculumId,
    @JsonKey(name: 'user_id') required String userId,
    String? question,
    @JsonKey(ignore: true) File? video,
  }) = _SubmitModel;

  Future<FormData> toFormData() async {
    final formMap = <String, dynamic>{
      'learning_id': learningId,
      'curriculum_id': curriculumId,
      'user_id': userId,
      if (question != null && question!.isNotEmpty) 'question': question,
    };

    if (video != null) {
      final fileName = video!.path.split(Platform.pathSeparator).last;
      formMap['video'] = await MultipartFile.fromFile(
        video!.path,
        filename: fileName,
      );
    }

    return FormData.fromMap(formMap);
  }
}
