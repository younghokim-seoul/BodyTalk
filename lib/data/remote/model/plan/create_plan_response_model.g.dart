// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_plan_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePlanResponseModel _$CreatePlanResponseModelFromJson(
  Map<String, dynamic> json,
) => _CreatePlanResponseModel(
  userId: json['user_id'] as String,
  learningId: (json['learning_id'] as num).toInt(),
  curriculumId: (json['curriculum_id'] as num).toInt(),
  planId: (json['plan_id'] as num).toInt(),
  recognition: json['recognition'] as String,
  motive: json['motive'] as String,
  active: json['active'] as String,
  context: json['context'] as String,
  creDt: DateTime.parse(json['cre_dt'] as String),
  updDt: DateTime.parse(json['upd_dt'] as String),
);

Map<String, dynamic> _$CreatePlanResponseModelToJson(
  _CreatePlanResponseModel instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'learning_id': instance.learningId,
  'curriculum_id': instance.curriculumId,
  'plan_id': instance.planId,
  'recognition': instance.recognition,
  'motive': instance.motive,
  'active': instance.active,
  'context': instance.context,
  'cre_dt': instance.creDt.toIso8601String(),
  'upd_dt': instance.updDt.toIso8601String(),
};
