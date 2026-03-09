// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitModel {

@JsonKey(name: 'learning_id') int get learningId;@JsonKey(name: 'curriculum_id') int get curriculumId;@JsonKey(name: 'user_id') String get userId; String? get question;@JsonKey(ignore: true) File? get video;
/// Create a copy of SubmitModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitModelCopyWith<SubmitModel> get copyWith => _$SubmitModelCopyWithImpl<SubmitModel>(this as SubmitModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitModel&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.question, question) || other.question == question)&&(identical(other.video, video) || other.video == video));
}


@override
int get hashCode => Object.hash(runtimeType,learningId,curriculumId,userId,question,video);

@override
String toString() {
  return 'SubmitModel(learningId: $learningId, curriculumId: $curriculumId, userId: $userId, question: $question, video: $video)';
}


}

/// @nodoc
abstract mixin class $SubmitModelCopyWith<$Res>  {
  factory $SubmitModelCopyWith(SubmitModel value, $Res Function(SubmitModel) _then) = _$SubmitModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'user_id') String userId, String? question,@JsonKey(ignore: true) File? video
});




}
/// @nodoc
class _$SubmitModelCopyWithImpl<$Res>
    implements $SubmitModelCopyWith<$Res> {
  _$SubmitModelCopyWithImpl(this._self, this._then);

  final SubmitModel _self;
  final $Res Function(SubmitModel) _then;

/// Create a copy of SubmitModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? learningId = null,Object? curriculumId = null,Object? userId = null,Object? question = freezed,Object? video = freezed,}) {
  return _then(_self.copyWith(
learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitModel].
extension SubmitModelPatterns on SubmitModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitModel value)  $default,){
final _that = this;
switch (_that) {
case _SubmitModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'user_id')  String userId,  String? question, @JsonKey(ignore: true)  File? video)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitModel() when $default != null:
return $default(_that.learningId,_that.curriculumId,_that.userId,_that.question,_that.video);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'user_id')  String userId,  String? question, @JsonKey(ignore: true)  File? video)  $default,) {final _that = this;
switch (_that) {
case _SubmitModel():
return $default(_that.learningId,_that.curriculumId,_that.userId,_that.question,_that.video);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'user_id')  String userId,  String? question, @JsonKey(ignore: true)  File? video)?  $default,) {final _that = this;
switch (_that) {
case _SubmitModel() when $default != null:
return $default(_that.learningId,_that.curriculumId,_that.userId,_that.question,_that.video);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitModel extends SubmitModel {
  const _SubmitModel({@JsonKey(name: 'learning_id') required this.learningId, @JsonKey(name: 'curriculum_id') required this.curriculumId, @JsonKey(name: 'user_id') required this.userId, this.question, @JsonKey(ignore: true) this.video}): super._();
  

@override@JsonKey(name: 'learning_id') final  int learningId;
@override@JsonKey(name: 'curriculum_id') final  int curriculumId;
@override@JsonKey(name: 'user_id') final  String userId;
@override final  String? question;
@override@JsonKey(ignore: true) final  File? video;

/// Create a copy of SubmitModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitModelCopyWith<_SubmitModel> get copyWith => __$SubmitModelCopyWithImpl<_SubmitModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitModel&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.question, question) || other.question == question)&&(identical(other.video, video) || other.video == video));
}


@override
int get hashCode => Object.hash(runtimeType,learningId,curriculumId,userId,question,video);

@override
String toString() {
  return 'SubmitModel(learningId: $learningId, curriculumId: $curriculumId, userId: $userId, question: $question, video: $video)';
}


}

/// @nodoc
abstract mixin class _$SubmitModelCopyWith<$Res> implements $SubmitModelCopyWith<$Res> {
  factory _$SubmitModelCopyWith(_SubmitModel value, $Res Function(_SubmitModel) _then) = __$SubmitModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'user_id') String userId, String? question,@JsonKey(ignore: true) File? video
});




}
/// @nodoc
class __$SubmitModelCopyWithImpl<$Res>
    implements _$SubmitModelCopyWith<$Res> {
  __$SubmitModelCopyWithImpl(this._self, this._then);

  final _SubmitModel _self;
  final $Res Function(_SubmitModel) _then;

/// Create a copy of SubmitModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? learningId = null,Object? curriculumId = null,Object? userId = null,Object? question = freezed,Object? video = freezed,}) {
  return _then(_SubmitModel(
learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

// dart format on
