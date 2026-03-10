// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubmitResponseModel {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'learning_id') int get learningId;@JsonKey(name: 'curriculum_id') int get curriculumId;@JsonKey(name: 'submit_id') int get submitId; String? get video; String? get question;@JsonKey(name: 'cre_dt') DateTime get creDt;@JsonKey(name: 'upd_dt') DateTime get updDt;
/// Create a copy of SubmitResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitResponseModelCopyWith<SubmitResponseModel> get copyWith => _$SubmitResponseModelCopyWithImpl<SubmitResponseModel>(this as SubmitResponseModel, _$identity);

  /// Serializes this SubmitResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitResponseModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.submitId, submitId) || other.submitId == submitId)&&(identical(other.video, video) || other.video == video)&&(identical(other.question, question) || other.question == question)&&(identical(other.creDt, creDt) || other.creDt == creDt)&&(identical(other.updDt, updDt) || other.updDt == updDt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,learningId,curriculumId,submitId,video,question,creDt,updDt);

@override
String toString() {
  return 'SubmitResponseModel(userId: $userId, learningId: $learningId, curriculumId: $curriculumId, submitId: $submitId, video: $video, question: $question, creDt: $creDt, updDt: $updDt)';
}


}

/// @nodoc
abstract mixin class $SubmitResponseModelCopyWith<$Res>  {
  factory $SubmitResponseModelCopyWith(SubmitResponseModel value, $Res Function(SubmitResponseModel) _then) = _$SubmitResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'submit_id') int submitId, String? video, String? question,@JsonKey(name: 'cre_dt') DateTime creDt,@JsonKey(name: 'upd_dt') DateTime updDt
});




}
/// @nodoc
class _$SubmitResponseModelCopyWithImpl<$Res>
    implements $SubmitResponseModelCopyWith<$Res> {
  _$SubmitResponseModelCopyWithImpl(this._self, this._then);

  final SubmitResponseModel _self;
  final $Res Function(SubmitResponseModel) _then;

/// Create a copy of SubmitResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? learningId = null,Object? curriculumId = null,Object? submitId = null,Object? video = freezed,Object? question = freezed,Object? creDt = null,Object? updDt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,submitId: null == submitId ? _self.submitId : submitId // ignore: cast_nullable_to_non_nullable
as int,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,creDt: null == creDt ? _self.creDt : creDt // ignore: cast_nullable_to_non_nullable
as DateTime,updDt: null == updDt ? _self.updDt : updDt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitResponseModel].
extension SubmitResponseModelPatterns on SubmitResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SubmitResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'submit_id')  int submitId,  String? video,  String? question, @JsonKey(name: 'cre_dt')  DateTime creDt, @JsonKey(name: 'upd_dt')  DateTime updDt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitResponseModel() when $default != null:
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.submitId,_that.video,_that.question,_that.creDt,_that.updDt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'submit_id')  int submitId,  String? video,  String? question, @JsonKey(name: 'cre_dt')  DateTime creDt, @JsonKey(name: 'upd_dt')  DateTime updDt)  $default,) {final _that = this;
switch (_that) {
case _SubmitResponseModel():
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.submitId,_that.video,_that.question,_that.creDt,_that.updDt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'submit_id')  int submitId,  String? video,  String? question, @JsonKey(name: 'cre_dt')  DateTime creDt, @JsonKey(name: 'upd_dt')  DateTime updDt)?  $default,) {final _that = this;
switch (_that) {
case _SubmitResponseModel() when $default != null:
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.submitId,_that.video,_that.question,_that.creDt,_that.updDt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubmitResponseModel implements SubmitResponseModel {
  const _SubmitResponseModel({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'learning_id') required this.learningId, @JsonKey(name: 'curriculum_id') required this.curriculumId, @JsonKey(name: 'submit_id') required this.submitId, this.video, this.question, @JsonKey(name: 'cre_dt') required this.creDt, @JsonKey(name: 'upd_dt') required this.updDt});
  factory _SubmitResponseModel.fromJson(Map<String, dynamic> json) => _$SubmitResponseModelFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'learning_id') final  int learningId;
@override@JsonKey(name: 'curriculum_id') final  int curriculumId;
@override@JsonKey(name: 'submit_id') final  int submitId;
@override final  String? video;
@override final  String? question;
@override@JsonKey(name: 'cre_dt') final  DateTime creDt;
@override@JsonKey(name: 'upd_dt') final  DateTime updDt;

/// Create a copy of SubmitResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitResponseModelCopyWith<_SubmitResponseModel> get copyWith => __$SubmitResponseModelCopyWithImpl<_SubmitResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmitResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitResponseModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.submitId, submitId) || other.submitId == submitId)&&(identical(other.video, video) || other.video == video)&&(identical(other.question, question) || other.question == question)&&(identical(other.creDt, creDt) || other.creDt == creDt)&&(identical(other.updDt, updDt) || other.updDt == updDt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,learningId,curriculumId,submitId,video,question,creDt,updDt);

@override
String toString() {
  return 'SubmitResponseModel(userId: $userId, learningId: $learningId, curriculumId: $curriculumId, submitId: $submitId, video: $video, question: $question, creDt: $creDt, updDt: $updDt)';
}


}

/// @nodoc
abstract mixin class _$SubmitResponseModelCopyWith<$Res> implements $SubmitResponseModelCopyWith<$Res> {
  factory _$SubmitResponseModelCopyWith(_SubmitResponseModel value, $Res Function(_SubmitResponseModel) _then) = __$SubmitResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'submit_id') int submitId, String? video, String? question,@JsonKey(name: 'cre_dt') DateTime creDt,@JsonKey(name: 'upd_dt') DateTime updDt
});




}
/// @nodoc
class __$SubmitResponseModelCopyWithImpl<$Res>
    implements _$SubmitResponseModelCopyWith<$Res> {
  __$SubmitResponseModelCopyWithImpl(this._self, this._then);

  final _SubmitResponseModel _self;
  final $Res Function(_SubmitResponseModel) _then;

/// Create a copy of SubmitResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? learningId = null,Object? curriculumId = null,Object? submitId = null,Object? video = freezed,Object? question = freezed,Object? creDt = null,Object? updDt = null,}) {
  return _then(_SubmitResponseModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,submitId: null == submitId ? _self.submitId : submitId // ignore: cast_nullable_to_non_nullable
as int,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,creDt: null == creDt ? _self.creDt : creDt // ignore: cast_nullable_to_non_nullable
as DateTime,updDt: null == updDt ? _self.updDt : updDt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
