import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_model.freezed.dart';
part 'learning_model.g.dart';



@freezed
abstract class LearningModel with _$LearningModel {
  const factory LearningModel({
    @JsonKey(name: 'learning_id') required int learningId,
    @JsonKey(name: 'learning_nm') required String learningNm,
    required List<CurriculumModel> curriculums,
  }) = _LearningModel;

  factory LearningModel.fromJson(Map<String, dynamic> json) =>
      _$LearningModelFromJson(json);
}

@freezed
abstract class CurriculumModel with _$CurriculumModel {
  const factory CurriculumModel({
    required int id,
    required String name,
    required String description,
    required String note,
    required String image,
  }) = _CurriculumModel;

  factory CurriculumModel.fromJson(Map<String, dynamic> json) =>
      _$CurriculumModelFromJson(json);
}
