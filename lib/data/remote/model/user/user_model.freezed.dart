// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'user_nm') String get userNm;@JsonKey(name: 'user_tp') String get userTp;@JsonKey(name: 'user_mng') String get userMng;@JsonKey(name: 'cre_dt') DateTime get creDt;@JsonKey(name: 'upd_dt') DateTime get updDt;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userNm, userNm) || other.userNm == userNm)&&(identical(other.userTp, userTp) || other.userTp == userTp)&&(identical(other.userMng, userMng) || other.userMng == userMng)&&(identical(other.creDt, creDt) || other.creDt == creDt)&&(identical(other.updDt, updDt) || other.updDt == updDt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,userNm,userTp,userMng,creDt,updDt);

@override
String toString() {
  return 'UserModel(userId: $userId, userNm: $userNm, userTp: $userTp, userMng: $userMng, creDt: $creDt, updDt: $updDt)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'user_nm') String userNm,@JsonKey(name: 'user_tp') String userTp,@JsonKey(name: 'user_mng') String userMng,@JsonKey(name: 'cre_dt') DateTime creDt,@JsonKey(name: 'upd_dt') DateTime updDt
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? userNm = null,Object? userTp = null,Object? userMng = null,Object? creDt = null,Object? updDt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userNm: null == userNm ? _self.userNm : userNm // ignore: cast_nullable_to_non_nullable
as String,userTp: null == userTp ? _self.userTp : userTp // ignore: cast_nullable_to_non_nullable
as String,userMng: null == userMng ? _self.userMng : userMng // ignore: cast_nullable_to_non_nullable
as String,creDt: null == creDt ? _self.creDt : creDt // ignore: cast_nullable_to_non_nullable
as DateTime,updDt: null == updDt ? _self.updDt : updDt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'user_nm')  String userNm, @JsonKey(name: 'user_tp')  String userTp, @JsonKey(name: 'user_mng')  String userMng, @JsonKey(name: 'cre_dt')  DateTime creDt, @JsonKey(name: 'upd_dt')  DateTime updDt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.userId,_that.userNm,_that.userTp,_that.userMng,_that.creDt,_that.updDt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'user_nm')  String userNm, @JsonKey(name: 'user_tp')  String userTp, @JsonKey(name: 'user_mng')  String userMng, @JsonKey(name: 'cre_dt')  DateTime creDt, @JsonKey(name: 'upd_dt')  DateTime updDt)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.userId,_that.userNm,_that.userTp,_that.userMng,_that.creDt,_that.updDt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'user_nm')  String userNm, @JsonKey(name: 'user_tp')  String userTp, @JsonKey(name: 'user_mng')  String userMng, @JsonKey(name: 'cre_dt')  DateTime creDt, @JsonKey(name: 'upd_dt')  DateTime updDt)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.userId,_that.userNm,_that.userTp,_that.userMng,_that.creDt,_that.updDt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'user_nm') required this.userNm, @JsonKey(name: 'user_tp') required this.userTp, @JsonKey(name: 'user_mng') required this.userMng, @JsonKey(name: 'cre_dt') required this.creDt, @JsonKey(name: 'upd_dt') required this.updDt});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'user_nm') final  String userNm;
@override@JsonKey(name: 'user_tp') final  String userTp;
@override@JsonKey(name: 'user_mng') final  String userMng;
@override@JsonKey(name: 'cre_dt') final  DateTime creDt;
@override@JsonKey(name: 'upd_dt') final  DateTime updDt;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userNm, userNm) || other.userNm == userNm)&&(identical(other.userTp, userTp) || other.userTp == userTp)&&(identical(other.userMng, userMng) || other.userMng == userMng)&&(identical(other.creDt, creDt) || other.creDt == creDt)&&(identical(other.updDt, updDt) || other.updDt == updDt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,userNm,userTp,userMng,creDt,updDt);

@override
String toString() {
  return 'UserModel(userId: $userId, userNm: $userNm, userTp: $userTp, userMng: $userMng, creDt: $creDt, updDt: $updDt)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'user_nm') String userNm,@JsonKey(name: 'user_tp') String userTp,@JsonKey(name: 'user_mng') String userMng,@JsonKey(name: 'cre_dt') DateTime creDt,@JsonKey(name: 'upd_dt') DateTime updDt
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? userNm = null,Object? userTp = null,Object? userMng = null,Object? creDt = null,Object? updDt = null,}) {
  return _then(_UserModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userNm: null == userNm ? _self.userNm : userNm // ignore: cast_nullable_to_non_nullable
as String,userTp: null == userTp ? _self.userTp : userTp // ignore: cast_nullable_to_non_nullable
as String,userMng: null == userMng ? _self.userMng : userMng // ignore: cast_nullable_to_non_nullable
as String,creDt: null == creDt ? _self.creDt : creDt // ignore: cast_nullable_to_non_nullable
as DateTime,updDt: null == updDt ? _self.updDt : updDt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
