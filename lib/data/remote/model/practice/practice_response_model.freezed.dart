// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PracticeResponseModel {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'learning_id') int get learningId;@JsonKey(name: 'curriculum_id') int get curriculumId;@JsonKey(name: 'practice_id') int get practiceId;@JsonKey(name: 'practice_dt') DateTime get practiceDt; String get content;
/// Create a copy of PracticeResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PracticeResponseModelCopyWith<PracticeResponseModel> get copyWith => _$PracticeResponseModelCopyWithImpl<PracticeResponseModel>(this as PracticeResponseModel, _$identity);

  /// Serializes this PracticeResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PracticeResponseModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.practiceId, practiceId) || other.practiceId == practiceId)&&(identical(other.practiceDt, practiceDt) || other.practiceDt == practiceDt)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,learningId,curriculumId,practiceId,practiceDt,content);

@override
String toString() {
  return 'PracticeResponseModel(userId: $userId, learningId: $learningId, curriculumId: $curriculumId, practiceId: $practiceId, practiceDt: $practiceDt, content: $content)';
}


}

/// @nodoc
abstract mixin class $PracticeResponseModelCopyWith<$Res>  {
  factory $PracticeResponseModelCopyWith(PracticeResponseModel value, $Res Function(PracticeResponseModel) _then) = _$PracticeResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'practice_id') int practiceId,@JsonKey(name: 'practice_dt') DateTime practiceDt, String content
});




}
/// @nodoc
class _$PracticeResponseModelCopyWithImpl<$Res>
    implements $PracticeResponseModelCopyWith<$Res> {
  _$PracticeResponseModelCopyWithImpl(this._self, this._then);

  final PracticeResponseModel _self;
  final $Res Function(PracticeResponseModel) _then;

/// Create a copy of PracticeResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? learningId = null,Object? curriculumId = null,Object? practiceId = null,Object? practiceDt = null,Object? content = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,practiceId: null == practiceId ? _self.practiceId : practiceId // ignore: cast_nullable_to_non_nullable
as int,practiceDt: null == practiceDt ? _self.practiceDt : practiceDt // ignore: cast_nullable_to_non_nullable
as DateTime,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PracticeResponseModel].
extension PracticeResponseModelPatterns on PracticeResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PracticeResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PracticeResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PracticeResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PracticeResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PracticeResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PracticeResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'practice_id')  int practiceId, @JsonKey(name: 'practice_dt')  DateTime practiceDt,  String content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PracticeResponseModel() when $default != null:
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.practiceId,_that.practiceDt,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'practice_id')  int practiceId, @JsonKey(name: 'practice_dt')  DateTime practiceDt,  String content)  $default,) {final _that = this;
switch (_that) {
case _PracticeResponseModel():
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.practiceId,_that.practiceDt,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'practice_id')  int practiceId, @JsonKey(name: 'practice_dt')  DateTime practiceDt,  String content)?  $default,) {final _that = this;
switch (_that) {
case _PracticeResponseModel() when $default != null:
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.practiceId,_that.practiceDt,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PracticeResponseModel implements PracticeResponseModel {
  const _PracticeResponseModel({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'learning_id') required this.learningId, @JsonKey(name: 'curriculum_id') required this.curriculumId, @JsonKey(name: 'practice_id') required this.practiceId, @JsonKey(name: 'practice_dt') required this.practiceDt, required this.content});
  factory _PracticeResponseModel.fromJson(Map<String, dynamic> json) => _$PracticeResponseModelFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'learning_id') final  int learningId;
@override@JsonKey(name: 'curriculum_id') final  int curriculumId;
@override@JsonKey(name: 'practice_id') final  int practiceId;
@override@JsonKey(name: 'practice_dt') final  DateTime practiceDt;
@override final  String content;

/// Create a copy of PracticeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PracticeResponseModelCopyWith<_PracticeResponseModel> get copyWith => __$PracticeResponseModelCopyWithImpl<_PracticeResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PracticeResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PracticeResponseModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.practiceId, practiceId) || other.practiceId == practiceId)&&(identical(other.practiceDt, practiceDt) || other.practiceDt == practiceDt)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,learningId,curriculumId,practiceId,practiceDt,content);

@override
String toString() {
  return 'PracticeResponseModel(userId: $userId, learningId: $learningId, curriculumId: $curriculumId, practiceId: $practiceId, practiceDt: $practiceDt, content: $content)';
}


}

/// @nodoc
abstract mixin class _$PracticeResponseModelCopyWith<$Res> implements $PracticeResponseModelCopyWith<$Res> {
  factory _$PracticeResponseModelCopyWith(_PracticeResponseModel value, $Res Function(_PracticeResponseModel) _then) = __$PracticeResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'practice_id') int practiceId,@JsonKey(name: 'practice_dt') DateTime practiceDt, String content
});




}
/// @nodoc
class __$PracticeResponseModelCopyWithImpl<$Res>
    implements _$PracticeResponseModelCopyWith<$Res> {
  __$PracticeResponseModelCopyWithImpl(this._self, this._then);

  final _PracticeResponseModel _self;
  final $Res Function(_PracticeResponseModel) _then;

/// Create a copy of PracticeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? learningId = null,Object? curriculumId = null,Object? practiceId = null,Object? practiceDt = null,Object? content = null,}) {
  return _then(_PracticeResponseModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,practiceId: null == practiceId ? _self.practiceId : practiceId // ignore: cast_nullable_to_non_nullable
as int,practiceDt: null == practiceDt ? _self.practiceDt : practiceDt // ignore: cast_nullable_to_non_nullable
as DateTime,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
