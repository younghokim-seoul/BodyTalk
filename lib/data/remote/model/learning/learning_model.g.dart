// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LearningModel _$LearningModelFromJson(Map<String, dynamic> json) =>
    _LearningModel(
      learningId: (json['learning_id'] as num).toInt(),
      learningNm: json['learning_nm'] as String,
      curriculums: (json['curriculums'] as List<dynamic>)
          .map((e) => CurriculumModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LearningModelToJson(_LearningModel instance) =>
    <String, dynamic>{
      'learning_id': instance.learningId,
      'learning_nm': instance.learningNm,
      'curriculums': instance.curriculums,
    };

_CurriculumModel _$CurriculumModelFromJson(Map<String, dynamic> json) =>
    _CurriculumModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      note: json['note'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$CurriculumModelToJson(_CurriculumModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'note': instance.note,
      'image': instance.image,
    };
