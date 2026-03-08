import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'user_nm') required String userNm,
    @JsonKey(name: 'user_tp') required String userTp,
    @JsonKey(name: 'cre_dt') required DateTime creDt,
    @JsonKey(name: 'upd_dt') required DateTime updDt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
