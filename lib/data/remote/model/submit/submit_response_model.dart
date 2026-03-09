import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_response_model.freezed.dart';
part 'submit_response_model.g.dart';

@freezed
abstract class SubmitResponseModel with _$SubmitResponseModel {
  const factory SubmitResponseModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'learning_id') required int learningId,
    @JsonKey(name: 'curriculum_id') required int curriculumId,
    @JsonKey(name: 'submit_id') required int submitId,
    required String video,
    required String question,
    @JsonKey(name: 'cre_dt') required DateTime creDt,
    @JsonKey(name: 'upd_dt') required DateTime updDt,
  }) = _SubmitResponseModel;

  factory SubmitResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SubmitResponseModelFromJson(json);
}
