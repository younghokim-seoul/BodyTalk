// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  userId: json['user_id'] as String,
  userNm: json['user_nm'] as String,
  userTp: json['user_tp'] as String,
  creDt: DateTime.parse(json['cre_dt'] as String),
  updDt: DateTime.parse(json['upd_dt'] as String),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_nm': instance.userNm,
      'user_tp': instance.userTp,
      'cre_dt': instance.creDt.toIso8601String(),
      'upd_dt': instance.updDt.toIso8601String(),
    };
