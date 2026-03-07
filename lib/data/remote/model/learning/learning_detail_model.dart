import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_detail_model.freezed.dart';
part 'learning_detail_model.g.dart';

@freezed
abstract class LearningDetailModel with _$LearningDetailModel {
  const factory LearningDetailModel({
    required CurriculumDetailModel curriculum,
    required PlanModel? plan,
    required PracticeModel? practice,
    required SubmitModel? submit,
  }) = _LearningDetailModel;

  factory LearningDetailModel.fromJson(Map<String, dynamic> json) =>
      _$LearningDetailModelFromJson(json);
}

@freezed
abstract class CurriculumDetailModel with _$CurriculumDetailModel {
  const factory CurriculumDetailModel({
    required int id,
    required String name,
    required String description,
    required String note,
    required String image,
    required PlaceholdersModel placeholders,
  }) = _CurriculumDetailModel;

  factory CurriculumDetailModel.fromJson(Map<String, dynamic> json) =>
      _$CurriculumDetailModelFromJson(json);
}

@freezed
abstract class PlaceholdersModel with _$PlaceholdersModel {
  const factory PlaceholdersModel({
    required PlaceholderContentModel plan,
    required PlaceholderContentModel practice,
  }) = _PlaceholdersModel;

  factory PlaceholdersModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceholdersModelFromJson(json);
}

@freezed
abstract class PlaceholderContentModel with _$PlaceholderContentModel {
  const factory PlaceholderContentModel({
    required String recognition,
    required String motive,
    required String active,
    required String context,
  }) = _PlaceholderContentModel;

  factory PlaceholderContentModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceholderContentModelFromJson(json);
}

@freezed
abstract class PlanModel with _$PlanModel {
  const factory PlanModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'learning_id') required int learningId,
    @JsonKey(name: 'curriculum_id') required int curriculumId,
    @JsonKey(name: 'plan_id') required int planId,
    required String recognition,
    required String motive,
    required String active,
    required String context,
  }) = _PlanModel;

  factory PlanModel.fromJson(Map<String, dynamic> json) =>
      _$PlanModelFromJson(json);
}

@freezed
abstract class PracticeModel with _$PracticeModel {
  const factory PracticeModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'learning_id') required int learningId,
    @JsonKey(name: 'curriculum_id') required int curriculumId,
    @JsonKey(name: 'practice_id') required int practiceId,
    @JsonKey(name: 'practice_dt') required DateTime practiceDt,
    required String content,
  }) = _PracticeModel;

  factory PracticeModel.fromJson(Map<String, dynamic> json) =>
      _$PracticeModelFromJson(json);
}

@freezed
abstract class SubmitModel with _$SubmitModel {
  const factory SubmitModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'learning_id') required int learningId,
    @JsonKey(name: 'curriculum_id') required int curriculumId,
    @JsonKey(name: 'submit_id') required int submitId,
    required String video,
    required String question,
  }) = _SubmitModel;

  factory SubmitModel.fromJson(Map<String, dynamic> json) =>
      _$SubmitModelFromJson(json);
}
