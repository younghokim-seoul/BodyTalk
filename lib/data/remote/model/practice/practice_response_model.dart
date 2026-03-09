import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice_response_model.freezed.dart';
part 'practice_response_model.g.dart';

@freezed
abstract class PracticeResponseModel with _$PracticeResponseModel {
  const factory PracticeResponseModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'learning_id') required int learningId,
    @JsonKey(name: 'curriculum_id') required int curriculumId,
    @JsonKey(name: 'practice_id') required int practiceId,
    @JsonKey(name: 'practice_dt') required DateTime practiceDt,
    required String content,
  }) = _PracticeResponseModel;

  factory PracticeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PracticeResponseModelFromJson(json);
}
