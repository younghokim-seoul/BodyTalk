// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LearningDetailModel _$LearningDetailModelFromJson(Map<String, dynamic> json) =>
    _LearningDetailModel(
      curriculum: CurriculumDetailModel.fromJson(
        json['curriculum'] as Map<String, dynamic>,
      ),
      plan: json['plan'] == null
          ? null
          : PlanModel.fromJson(json['plan'] as Map<String, dynamic>),
      practice: json['practice'] == null
          ? null
          : PracticeModel.fromJson(json['practice'] as Map<String, dynamic>),
      submit: json['submit'] == null
          ? null
          : SubmitModel.fromJson(json['submit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LearningDetailModelToJson(
  _LearningDetailModel instance,
) => <String, dynamic>{
  'curriculum': instance.curriculum,
  'plan': instance.plan,
  'practice': instance.practice,
  'submit': instance.submit,
};

_CurriculumDetailModel _$CurriculumDetailModelFromJson(
  Map<String, dynamic> json,
) => _CurriculumDetailModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String,
  note: json['note'] as String,
  image: json['image'] as String,
  placeholders: PlaceholdersModel.fromJson(
    json['placeholders'] as Map<String, dynamic>,
  ),
  titles: json['titles'] == null
      ? null
      : TitlesModel.fromJson(json['titles'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CurriculumDetailModelToJson(
  _CurriculumDetailModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'note': instance.note,
  'image': instance.image,
  'placeholders': instance.placeholders,
  'titles': instance.titles,
};

_PlaceholdersModel _$PlaceholdersModelFromJson(Map<String, dynamic> json) =>
    _PlaceholdersModel(
      plan: PlaceholderContentModel.fromJson(
        json['plan'] as Map<String, dynamic>,
      ),
      practice: PlaceholderContentModel.fromJson(
        json['practice'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PlaceholdersModelToJson(_PlaceholdersModel instance) =>
    <String, dynamic>{'plan': instance.plan, 'practice': instance.practice};

_PlaceholderContentModel _$PlaceholderContentModelFromJson(
  Map<String, dynamic> json,
) => _PlaceholderContentModel(
  recognition: json['recognition'] as String,
  motive: json['motive'] as String,
  active: json['active'] as String,
  context: json['context'] as String,
);

Map<String, dynamic> _$PlaceholderContentModelToJson(
  _PlaceholderContentModel instance,
) => <String, dynamic>{
  'recognition': instance.recognition,
  'motive': instance.motive,
  'active': instance.active,
  'context': instance.context,
};

_TitlesModel _$TitlesModelFromJson(Map<String, dynamic> json) => _TitlesModel(
  plan: TitleContentModel.fromJson(json['plan'] as Map<String, dynamic>),
  practice: TitleContentModel.fromJson(
    json['practice'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$TitlesModelToJson(_TitlesModel instance) =>
    <String, dynamic>{'plan': instance.plan, 'practice': instance.practice};

_TitleContentModel _$TitleContentModelFromJson(Map<String, dynamic> json) =>
    _TitleContentModel(
      recognition: json['recognition'] as String,
      motive: json['motive'] as String,
      active: json['active'] as String,
      context: json['context'] as String,
    );

Map<String, dynamic> _$TitleContentModelToJson(_TitleContentModel instance) =>
    <String, dynamic>{
      'recognition': instance.recognition,
      'motive': instance.motive,
      'active': instance.active,
      'context': instance.context,
    };

_PlanModel _$PlanModelFromJson(Map<String, dynamic> json) => _PlanModel(
  userId: json['user_id'] as String,
  learningId: (json['learning_id'] as num).toInt(),
  curriculumId: (json['curriculum_id'] as num).toInt(),
  planId: (json['plan_id'] as num).toInt(),
  recognition: json['recognition'] as String,
  motive: json['motive'] as String,
  active: json['active'] as String,
  context: json['context'] as String,
);

Map<String, dynamic> _$PlanModelToJson(_PlanModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'learning_id': instance.learningId,
      'curriculum_id': instance.curriculumId,
      'plan_id': instance.planId,
      'recognition': instance.recognition,
      'motive': instance.motive,
      'active': instance.active,
      'context': instance.context,
    };

_PracticeModel _$PracticeModelFromJson(Map<String, dynamic> json) =>
    _PracticeModel(
      userId: json['user_id'] as String,
      learningId: (json['learning_id'] as num).toInt(),
      curriculumId: (json['curriculum_id'] as num).toInt(),
      practiceId: (json['practice_id'] as num).toInt(),
      practiceDt: DateTime.parse(json['practice_dt'] as String),
      content: json['content'] as String,
    );

Map<String, dynamic> _$PracticeModelToJson(_PracticeModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'learning_id': instance.learningId,
      'curriculum_id': instance.curriculumId,
      'practice_id': instance.practiceId,
      'practice_dt': instance.practiceDt.toIso8601String(),
      'content': instance.content,
    };

_SubmitModel _$SubmitModelFromJson(Map<String, dynamic> json) => _SubmitModel(
  userId: json['user_id'] as String,
  learningId: (json['learning_id'] as num).toInt(),
  curriculumId: (json['curriculum_id'] as num).toInt(),
  submitId: (json['submit_id'] as num).toInt(),
  video: json['video'] as String?,
  question: json['question'] as String?,
  answer: json['answer'] as String?,
);

Map<String, dynamic> _$SubmitModelToJson(_SubmitModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'learning_id': instance.learningId,
      'curriculum_id': instance.curriculumId,
      'submit_id': instance.submitId,
      'video': instance.video,
      'question': instance.question,
      'answer': instance.answer,
    };
