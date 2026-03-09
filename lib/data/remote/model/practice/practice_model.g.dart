// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PracticeModel _$PracticeModelFromJson(Map<String, dynamic> json) =>
    _PracticeModel(
      learningId: (json['learning_id'] as num).toInt(),
      curriculumId: (json['curriculum_id'] as num).toInt(),
      practiceDt: DateTime.parse(json['practice_dt'] as String),
      content: json['content'] as String,
      recognition: json['recognition'] as String,
      motive: json['motive'] as String,
      active: json['active'] as String,
      context: json['context'] as String,
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$PracticeModelToJson(_PracticeModel instance) =>
    <String, dynamic>{
      'learning_id': instance.learningId,
      'curriculum_id': instance.curriculumId,
      'practice_dt': instance.practiceDt.toIso8601String(),
      'content': instance.content,
      'recognition': instance.recognition,
      'motive': instance.motive,
      'active': instance.active,
      'context': instance.context,
      'user_id': instance.userId,
    };
