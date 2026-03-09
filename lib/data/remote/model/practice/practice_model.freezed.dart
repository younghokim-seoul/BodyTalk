// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PracticeModel {

@JsonKey(name: 'learning_id') int get learningId;@JsonKey(name: 'curriculum_id') int get curriculumId;@JsonKey(name: 'practice_dt') DateTime get practiceDt; String get content; String get recognition; String get motive; String get active; String get context;@JsonKey(name: 'user_id') String get userId;
/// Create a copy of PracticeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PracticeModelCopyWith<PracticeModel> get copyWith => _$PracticeModelCopyWithImpl<PracticeModel>(this as PracticeModel, _$identity);

  /// Serializes this PracticeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PracticeModel&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.practiceDt, practiceDt) || other.practiceDt == practiceDt)&&(identical(other.content, content) || other.content == content)&&(identical(other.recognition, recognition) || other.recognition == recognition)&&(identical(other.motive, motive) || other.motive == motive)&&(identical(other.active, active) || other.active == active)&&(identical(other.context, context) || other.context == context)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,learningId,curriculumId,practiceDt,content,recognition,motive,active,context,userId);

@override
String toString() {
  return 'PracticeModel(learningId: $learningId, curriculumId: $curriculumId, practiceDt: $practiceDt, content: $content, recognition: $recognition, motive: $motive, active: $active, context: $context, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $PracticeModelCopyWith<$Res>  {
  factory $PracticeModelCopyWith(PracticeModel value, $Res Function(PracticeModel) _then) = _$PracticeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'practice_dt') DateTime practiceDt, String content, String recognition, String motive, String active, String context,@JsonKey(name: 'user_id') String userId
});




}
/// @nodoc
class _$PracticeModelCopyWithImpl<$Res>
    implements $PracticeModelCopyWith<$Res> {
  _$PracticeModelCopyWithImpl(this._self, this._then);

  final PracticeModel _self;
  final $Res Function(PracticeModel) _then;

/// Create a copy of PracticeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? learningId = null,Object? curriculumId = null,Object? practiceDt = null,Object? content = null,Object? recognition = null,Object? motive = null,Object? active = null,Object? context = null,Object? userId = null,}) {
  return _then(_self.copyWith(
learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,practiceDt: null == practiceDt ? _self.practiceDt : practiceDt // ignore: cast_nullable_to_non_nullable
as DateTime,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,recognition: null == recognition ? _self.recognition : recognition // ignore: cast_nullable_to_non_nullable
as String,motive: null == motive ? _self.motive : motive // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PracticeModel].
extension PracticeModelPatterns on PracticeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PracticeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PracticeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PracticeModel value)  $default,){
final _that = this;
switch (_that) {
case _PracticeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PracticeModel value)?  $default,){
final _that = this;
switch (_that) {
case _PracticeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'practice_dt')  DateTime practiceDt,  String content,  String recognition,  String motive,  String active,  String context, @JsonKey(name: 'user_id')  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PracticeModel() when $default != null:
return $default(_that.learningId,_that.curriculumId,_that.practiceDt,_that.content,_that.recognition,_that.motive,_that.active,_that.context,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'practice_dt')  DateTime practiceDt,  String content,  String recognition,  String motive,  String active,  String context, @JsonKey(name: 'user_id')  String userId)  $default,) {final _that = this;
switch (_that) {
case _PracticeModel():
return $default(_that.learningId,_that.curriculumId,_that.practiceDt,_that.content,_that.recognition,_that.motive,_that.active,_that.context,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'practice_dt')  DateTime practiceDt,  String content,  String recognition,  String motive,  String active,  String context, @JsonKey(name: 'user_id')  String userId)?  $default,) {final _that = this;
switch (_that) {
case _PracticeModel() when $default != null:
return $default(_that.learningId,_that.curriculumId,_that.practiceDt,_that.content,_that.recognition,_that.motive,_that.active,_that.context,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PracticeModel implements PracticeModel {
  const _PracticeModel({@JsonKey(name: 'learning_id') required this.learningId, @JsonKey(name: 'curriculum_id') required this.curriculumId, @JsonKey(name: 'practice_dt') required this.practiceDt, required this.content, required this.recognition, required this.motive, required this.active, required this.context, @JsonKey(name: 'user_id') required this.userId});
  factory _PracticeModel.fromJson(Map<String, dynamic> json) => _$PracticeModelFromJson(json);

@override@JsonKey(name: 'learning_id') final  int learningId;
@override@JsonKey(name: 'curriculum_id') final  int curriculumId;
@override@JsonKey(name: 'practice_dt') final  DateTime practiceDt;
@override final  String content;
@override final  String recognition;
@override final  String motive;
@override final  String active;
@override final  String context;
@override@JsonKey(name: 'user_id') final  String userId;

/// Create a copy of PracticeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PracticeModelCopyWith<_PracticeModel> get copyWith => __$PracticeModelCopyWithImpl<_PracticeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PracticeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PracticeModel&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.practiceDt, practiceDt) || other.practiceDt == practiceDt)&&(identical(other.content, content) || other.content == content)&&(identical(other.recognition, recognition) || other.recognition == recognition)&&(identical(other.motive, motive) || other.motive == motive)&&(identical(other.active, active) || other.active == active)&&(identical(other.context, context) || other.context == context)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,learningId,curriculumId,practiceDt,content,recognition,motive,active,context,userId);

@override
String toString() {
  return 'PracticeModel(learningId: $learningId, curriculumId: $curriculumId, practiceDt: $practiceDt, content: $content, recognition: $recognition, motive: $motive, active: $active, context: $context, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$PracticeModelCopyWith<$Res> implements $PracticeModelCopyWith<$Res> {
  factory _$PracticeModelCopyWith(_PracticeModel value, $Res Function(_PracticeModel) _then) = __$PracticeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'practice_dt') DateTime practiceDt, String content, String recognition, String motive, String active, String context,@JsonKey(name: 'user_id') String userId
});




}
/// @nodoc
class __$PracticeModelCopyWithImpl<$Res>
    implements _$PracticeModelCopyWith<$Res> {
  __$PracticeModelCopyWithImpl(this._self, this._then);

  final _PracticeModel _self;
  final $Res Function(_PracticeModel) _then;

/// Create a copy of PracticeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? learningId = null,Object? curriculumId = null,Object? practiceDt = null,Object? content = null,Object? recognition = null,Object? motive = null,Object? active = null,Object? context = null,Object? userId = null,}) {
  return _then(_PracticeModel(
learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,practiceDt: null == practiceDt ? _self.practiceDt : practiceDt // ignore: cast_nullable_to_non_nullable
as DateTime,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,recognition: null == recognition ? _self.recognition : recognition // ignore: cast_nullable_to_non_nullable
as String,motive: null == motive ? _self.motive : motive // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
