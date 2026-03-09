// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePlanModel _$CreatePlanModelFromJson(Map<String, dynamic> json) =>
    _CreatePlanModel(
      userId: json['user_id'] as String,
      learningId: (json['learning_id'] as num).toInt(),
      curriculumId: (json['curriculum_id'] as num).toInt(),
      recognition: json['recognition'] as String,
      motive: json['motive'] as String,
      active: json['active'] as String,
      context: json['context'] as String,
    );

Map<String, dynamic> _$CreatePlanModelToJson(_CreatePlanModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'learning_id': instance.learningId,
      'curriculum_id': instance.curriculumId,
      'recognition': instance.recognition,
      'motive': instance.motive,
      'active': instance.active,
      'context': instance.context,
    };
