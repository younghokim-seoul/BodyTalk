// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubmitResponseModel _$SubmitResponseModelFromJson(Map<String, dynamic> json) =>
    _SubmitResponseModel(
      userId: json['user_id'] as String,
      learningId: (json['learning_id'] as num).toInt(),
      curriculumId: (json['curriculum_id'] as num).toInt(),
      submitId: (json['submit_id'] as num).toInt(),
      video: json['video'] as String?,
      question: json['question'] as String?,
      creDt: DateTime.parse(json['cre_dt'] as String),
      updDt: DateTime.parse(json['upd_dt'] as String),
    );

Map<String, dynamic> _$SubmitResponseModelToJson(
  _SubmitResponseModel instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'learning_id': instance.learningId,
  'curriculum_id': instance.curriculumId,
  'submit_id': instance.submitId,
  'video': instance.video,
  'question': instance.question,
  'cre_dt': instance.creDt.toIso8601String(),
  'upd_dt': instance.updDt.toIso8601String(),
};
