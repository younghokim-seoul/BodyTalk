import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice_model.freezed.dart';
part 'practice_model.g.dart';

@freezed
abstract class PracticeModel with _$PracticeModel {
  const factory PracticeModel({
    @JsonKey(name: 'learning_id') required int learningId,
    @JsonKey(name: 'curriculum_id') required int curriculumId,
    @JsonKey(name: 'practice_dt') required DateTime practiceDt,
    required String content,
    required String recognition,
    required String motive,
    required String active,
    required String context,
    @JsonKey(name: 'user_id') required String userId,
  }) = _PracticeModel;

  factory PracticeModel.fromJson(Map<String, dynamic> json) =>
      _$PracticeModelFromJson(json);
}
