import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_plan_response_model.freezed.dart';
part 'create_plan_response_model.g.dart';

@freezed
abstract class CreatePlanResponseModel with _$CreatePlanResponseModel {
  const factory CreatePlanResponseModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'learning_id') required int learningId,
    @JsonKey(name: 'curriculum_id') required int curriculumId,
    @JsonKey(name: 'plan_id') required int planId,
    required String recognition,
    required String motive,
    required String active,
    required String context,
    @JsonKey(name: 'cre_dt') required DateTime creDt,
    @JsonKey(name: 'upd_dt') required DateTime updDt,
  }) = _CreatePlanResponseModel;

  factory CreatePlanResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreatePlanResponseModelFromJson(json);
}
