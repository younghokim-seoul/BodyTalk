// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_plan_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePlanResponseModel {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'learning_id') int get learningId;@JsonKey(name: 'curriculum_id') int get curriculumId;@JsonKey(name: 'plan_id') int get planId; String get recognition; String get motive; String get active; String get context;@JsonKey(name: 'cre_dt') DateTime get creDt;@JsonKey(name: 'upd_dt') DateTime get updDt;
/// Create a copy of CreatePlanResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePlanResponseModelCopyWith<CreatePlanResponseModel> get copyWith => _$CreatePlanResponseModelCopyWithImpl<CreatePlanResponseModel>(this as CreatePlanResponseModel, _$identity);

  /// Serializes this CreatePlanResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePlanResponseModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.recognition, recognition) || other.recognition == recognition)&&(identical(other.motive, motive) || other.motive == motive)&&(identical(other.active, active) || other.active == active)&&(identical(other.context, context) || other.context == context)&&(identical(other.creDt, creDt) || other.creDt == creDt)&&(identical(other.updDt, updDt) || other.updDt == updDt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,learningId,curriculumId,planId,recognition,motive,active,context,creDt,updDt);

@override
String toString() {
  return 'CreatePlanResponseModel(userId: $userId, learningId: $learningId, curriculumId: $curriculumId, planId: $planId, recognition: $recognition, motive: $motive, active: $active, context: $context, creDt: $creDt, updDt: $updDt)';
}


}

/// @nodoc
abstract mixin class $CreatePlanResponseModelCopyWith<$Res>  {
  factory $CreatePlanResponseModelCopyWith(CreatePlanResponseModel value, $Res Function(CreatePlanResponseModel) _then) = _$CreatePlanResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'plan_id') int planId, String recognition, String motive, String active, String context,@JsonKey(name: 'cre_dt') DateTime creDt,@JsonKey(name: 'upd_dt') DateTime updDt
});




}
/// @nodoc
class _$CreatePlanResponseModelCopyWithImpl<$Res>
    implements $CreatePlanResponseModelCopyWith<$Res> {
  _$CreatePlanResponseModelCopyWithImpl(this._self, this._then);

  final CreatePlanResponseModel _self;
  final $Res Function(CreatePlanResponseModel) _then;

/// Create a copy of CreatePlanResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? learningId = null,Object? curriculumId = null,Object? planId = null,Object? recognition = null,Object? motive = null,Object? active = null,Object? context = null,Object? creDt = null,Object? updDt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as int,recognition: null == recognition ? _self.recognition : recognition // ignore: cast_nullable_to_non_nullable
as String,motive: null == motive ? _self.motive : motive // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,creDt: null == creDt ? _self.creDt : creDt // ignore: cast_nullable_to_non_nullable
as DateTime,updDt: null == updDt ? _self.updDt : updDt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePlanResponseModel].
extension CreatePlanResponseModelPatterns on CreatePlanResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePlanResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePlanResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePlanResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CreatePlanResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePlanResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePlanResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'plan_id')  int planId,  String recognition,  String motive,  String active,  String context, @JsonKey(name: 'cre_dt')  DateTime creDt, @JsonKey(name: 'upd_dt')  DateTime updDt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePlanResponseModel() when $default != null:
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.planId,_that.recognition,_that.motive,_that.active,_that.context,_that.creDt,_that.updDt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'plan_id')  int planId,  String recognition,  String motive,  String active,  String context, @JsonKey(name: 'cre_dt')  DateTime creDt, @JsonKey(name: 'upd_dt')  DateTime updDt)  $default,) {final _that = this;
switch (_that) {
case _CreatePlanResponseModel():
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.planId,_that.recognition,_that.motive,_that.active,_that.context,_that.creDt,_that.updDt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'plan_id')  int planId,  String recognition,  String motive,  String active,  String context, @JsonKey(name: 'cre_dt')  DateTime creDt, @JsonKey(name: 'upd_dt')  DateTime updDt)?  $default,) {final _that = this;
switch (_that) {
case _CreatePlanResponseModel() when $default != null:
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.planId,_that.recognition,_that.motive,_that.active,_that.context,_that.creDt,_that.updDt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePlanResponseModel implements CreatePlanResponseModel {
  const _CreatePlanResponseModel({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'learning_id') required this.learningId, @JsonKey(name: 'curriculum_id') required this.curriculumId, @JsonKey(name: 'plan_id') required this.planId, required this.recognition, required this.motive, required this.active, required this.context, @JsonKey(name: 'cre_dt') required this.creDt, @JsonKey(name: 'upd_dt') required this.updDt});
  factory _CreatePlanResponseModel.fromJson(Map<String, dynamic> json) => _$CreatePlanResponseModelFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'learning_id') final  int learningId;
@override@JsonKey(name: 'curriculum_id') final  int curriculumId;
@override@JsonKey(name: 'plan_id') final  int planId;
@override final  String recognition;
@override final  String motive;
@override final  String active;
@override final  String context;
@override@JsonKey(name: 'cre_dt') final  DateTime creDt;
@override@JsonKey(name: 'upd_dt') final  DateTime updDt;

/// Create a copy of CreatePlanResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePlanResponseModelCopyWith<_CreatePlanResponseModel> get copyWith => __$CreatePlanResponseModelCopyWithImpl<_CreatePlanResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePlanResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePlanResponseModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.recognition, recognition) || other.recognition == recognition)&&(identical(other.motive, motive) || other.motive == motive)&&(identical(other.active, active) || other.active == active)&&(identical(other.context, context) || other.context == context)&&(identical(other.creDt, creDt) || other.creDt == creDt)&&(identical(other.updDt, updDt) || other.updDt == updDt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,learningId,curriculumId,planId,recognition,motive,active,context,creDt,updDt);

@override
String toString() {
  return 'CreatePlanResponseModel(userId: $userId, learningId: $learningId, curriculumId: $curriculumId, planId: $planId, recognition: $recognition, motive: $motive, active: $active, context: $context, creDt: $creDt, updDt: $updDt)';
}


}

/// @nodoc
abstract mixin class _$CreatePlanResponseModelCopyWith<$Res> implements $CreatePlanResponseModelCopyWith<$Res> {
  factory _$CreatePlanResponseModelCopyWith(_CreatePlanResponseModel value, $Res Function(_CreatePlanResponseModel) _then) = __$CreatePlanResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'plan_id') int planId, String recognition, String motive, String active, String context,@JsonKey(name: 'cre_dt') DateTime creDt,@JsonKey(name: 'upd_dt') DateTime updDt
});




}
/// @nodoc
class __$CreatePlanResponseModelCopyWithImpl<$Res>
    implements _$CreatePlanResponseModelCopyWith<$Res> {
  __$CreatePlanResponseModelCopyWithImpl(this._self, this._then);

  final _CreatePlanResponseModel _self;
  final $Res Function(_CreatePlanResponseModel) _then;

/// Create a copy of CreatePlanResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? learningId = null,Object? curriculumId = null,Object? planId = null,Object? recognition = null,Object? motive = null,Object? active = null,Object? context = null,Object? creDt = null,Object? updDt = null,}) {
  return _then(_CreatePlanResponseModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as int,recognition: null == recognition ? _self.recognition : recognition // ignore: cast_nullable_to_non_nullable
as String,motive: null == motive ? _self.motive : motive // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,creDt: null == creDt ? _self.creDt : creDt // ignore: cast_nullable_to_non_nullable
as DateTime,updDt: null == updDt ? _self.updDt : updDt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
