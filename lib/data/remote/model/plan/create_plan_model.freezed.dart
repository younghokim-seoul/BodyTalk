// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePlanModel {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'learning_id') int get learningId;@JsonKey(name: 'curriculum_id') int get curriculumId; String get recognition; String get motive; String get active; String get context;
/// Create a copy of CreatePlanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePlanModelCopyWith<CreatePlanModel> get copyWith => _$CreatePlanModelCopyWithImpl<CreatePlanModel>(this as CreatePlanModel, _$identity);

  /// Serializes this CreatePlanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePlanModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.recognition, recognition) || other.recognition == recognition)&&(identical(other.motive, motive) || other.motive == motive)&&(identical(other.active, active) || other.active == active)&&(identical(other.context, context) || other.context == context));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,learningId,curriculumId,recognition,motive,active,context);

@override
String toString() {
  return 'CreatePlanModel(userId: $userId, learningId: $learningId, curriculumId: $curriculumId, recognition: $recognition, motive: $motive, active: $active, context: $context)';
}


}

/// @nodoc
abstract mixin class $CreatePlanModelCopyWith<$Res>  {
  factory $CreatePlanModelCopyWith(CreatePlanModel value, $Res Function(CreatePlanModel) _then) = _$CreatePlanModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId, String recognition, String motive, String active, String context
});




}
/// @nodoc
class _$CreatePlanModelCopyWithImpl<$Res>
    implements $CreatePlanModelCopyWith<$Res> {
  _$CreatePlanModelCopyWithImpl(this._self, this._then);

  final CreatePlanModel _self;
  final $Res Function(CreatePlanModel) _then;

/// Create a copy of CreatePlanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? learningId = null,Object? curriculumId = null,Object? recognition = null,Object? motive = null,Object? active = null,Object? context = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,recognition: null == recognition ? _self.recognition : recognition // ignore: cast_nullable_to_non_nullable
as String,motive: null == motive ? _self.motive : motive // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePlanModel].
extension CreatePlanModelPatterns on CreatePlanModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePlanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePlanModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePlanModel value)  $default,){
final _that = this;
switch (_that) {
case _CreatePlanModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePlanModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePlanModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId,  String recognition,  String motive,  String active,  String context)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePlanModel() when $default != null:
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.recognition,_that.motive,_that.active,_that.context);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId,  String recognition,  String motive,  String active,  String context)  $default,) {final _that = this;
switch (_that) {
case _CreatePlanModel():
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.recognition,_that.motive,_that.active,_that.context);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId,  String recognition,  String motive,  String active,  String context)?  $default,) {final _that = this;
switch (_that) {
case _CreatePlanModel() when $default != null:
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.recognition,_that.motive,_that.active,_that.context);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePlanModel implements CreatePlanModel {
  const _CreatePlanModel({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'learning_id') required this.learningId, @JsonKey(name: 'curriculum_id') required this.curriculumId, required this.recognition, required this.motive, required this.active, required this.context});
  factory _CreatePlanModel.fromJson(Map<String, dynamic> json) => _$CreatePlanModelFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'learning_id') final  int learningId;
@override@JsonKey(name: 'curriculum_id') final  int curriculumId;
@override final  String recognition;
@override final  String motive;
@override final  String active;
@override final  String context;

/// Create a copy of CreatePlanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePlanModelCopyWith<_CreatePlanModel> get copyWith => __$CreatePlanModelCopyWithImpl<_CreatePlanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePlanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePlanModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.recognition, recognition) || other.recognition == recognition)&&(identical(other.motive, motive) || other.motive == motive)&&(identical(other.active, active) || other.active == active)&&(identical(other.context, context) || other.context == context));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,learningId,curriculumId,recognition,motive,active,context);

@override
String toString() {
  return 'CreatePlanModel(userId: $userId, learningId: $learningId, curriculumId: $curriculumId, recognition: $recognition, motive: $motive, active: $active, context: $context)';
}


}

/// @nodoc
abstract mixin class _$CreatePlanModelCopyWith<$Res> implements $CreatePlanModelCopyWith<$Res> {
  factory _$CreatePlanModelCopyWith(_CreatePlanModel value, $Res Function(_CreatePlanModel) _then) = __$CreatePlanModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId, String recognition, String motive, String active, String context
});




}
/// @nodoc
class __$CreatePlanModelCopyWithImpl<$Res>
    implements _$CreatePlanModelCopyWith<$Res> {
  __$CreatePlanModelCopyWithImpl(this._self, this._then);

  final _CreatePlanModel _self;
  final $Res Function(_CreatePlanModel) _then;

/// Create a copy of CreatePlanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? learningId = null,Object? curriculumId = null,Object? recognition = null,Object? motive = null,Object? active = null,Object? context = null,}) {
  return _then(_CreatePlanModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,recognition: null == recognition ? _self.recognition : recognition // ignore: cast_nullable_to_non_nullable
as String,motive: null == motive ? _self.motive : motive // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
