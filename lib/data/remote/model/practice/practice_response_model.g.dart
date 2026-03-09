// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PracticeResponseModel _$PracticeResponseModelFromJson(
  Map<String, dynamic> json,
) => _PracticeResponseModel(
  userId: json['user_id'] as String,
  learningId: (json['learning_id'] as num).toInt(),
  curriculumId: (json['curriculum_id'] as num).toInt(),
  practiceId: (json['practice_id'] as num).toInt(),
  practiceDt: DateTime.parse(json['practice_dt'] as String),
  content: json['content'] as String,
);

Map<String, dynamic> _$PracticeResponseModelToJson(
  _PracticeResponseModel instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'learning_id': instance.learningId,
  'curriculum_id': instance.curriculumId,
  'practice_id': instance.practiceId,
  'practice_dt': instance.practiceDt.toIso8601String(),
  'content': instance.content,
};
