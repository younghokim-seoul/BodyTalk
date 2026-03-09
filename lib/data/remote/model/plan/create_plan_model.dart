import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_plan_model.freezed.dart';
part 'create_plan_model.g.dart';
@freezed
abstract class CreatePlanModel with _$CreatePlanModel {
  const factory CreatePlanModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'learning_id') required int learningId,
    @JsonKey(name: 'curriculum_id') required int curriculumId,
    required String recognition,
    required String motive,
    required String active,
    required String context,
  }) = _CreatePlanModel;

  factory CreatePlanModel.fromJson(Map<String, dynamic> json) =>
      _$CreatePlanModelFromJson(json);
}
