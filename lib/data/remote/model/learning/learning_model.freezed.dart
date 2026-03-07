// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LearningModel {

@JsonKey(name: 'learning_id') int get learningId;@JsonKey(name: 'learning_nm') String get learningNm; List<CurriculumModel> get curriculums;
/// Create a copy of LearningModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LearningModelCopyWith<LearningModel> get copyWith => _$LearningModelCopyWithImpl<LearningModel>(this as LearningModel, _$identity);

  /// Serializes this LearningModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LearningModel&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.learningNm, learningNm) || other.learningNm == learningNm)&&const DeepCollectionEquality().equals(other.curriculums, curriculums));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,learningId,learningNm,const DeepCollectionEquality().hash(curriculums));

@override
String toString() {
  return 'LearningModel(learningId: $learningId, learningNm: $learningNm, curriculums: $curriculums)';
}


}

/// @nodoc
abstract mixin class $LearningModelCopyWith<$Res>  {
  factory $LearningModelCopyWith(LearningModel value, $Res Function(LearningModel) _then) = _$LearningModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'learning_nm') String learningNm, List<CurriculumModel> curriculums
});




}
/// @nodoc
class _$LearningModelCopyWithImpl<$Res>
    implements $LearningModelCopyWith<$Res> {
  _$LearningModelCopyWithImpl(this._self, this._then);

  final LearningModel _self;
  final $Res Function(LearningModel) _then;

/// Create a copy of LearningModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? learningId = null,Object? learningNm = null,Object? curriculums = null,}) {
  return _then(_self.copyWith(
learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,learningNm: null == learningNm ? _self.learningNm : learningNm // ignore: cast_nullable_to_non_nullable
as String,curriculums: null == curriculums ? _self.curriculums : curriculums // ignore: cast_nullable_to_non_nullable
as List<CurriculumModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [LearningModel].
extension LearningModelPatterns on LearningModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LearningModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LearningModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LearningModel value)  $default,){
final _that = this;
switch (_that) {
case _LearningModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LearningModel value)?  $default,){
final _that = this;
switch (_that) {
case _LearningModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'learning_nm')  String learningNm,  List<CurriculumModel> curriculums)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LearningModel() when $default != null:
return $default(_that.learningId,_that.learningNm,_that.curriculums);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'learning_nm')  String learningNm,  List<CurriculumModel> curriculums)  $default,) {final _that = this;
switch (_that) {
case _LearningModel():
return $default(_that.learningId,_that.learningNm,_that.curriculums);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'learning_nm')  String learningNm,  List<CurriculumModel> curriculums)?  $default,) {final _that = this;
switch (_that) {
case _LearningModel() when $default != null:
return $default(_that.learningId,_that.learningNm,_that.curriculums);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LearningModel implements LearningModel {
  const _LearningModel({@JsonKey(name: 'learning_id') required this.learningId, @JsonKey(name: 'learning_nm') required this.learningNm, required final  List<CurriculumModel> curriculums}): _curriculums = curriculums;
  factory _LearningModel.fromJson(Map<String, dynamic> json) => _$LearningModelFromJson(json);

@override@JsonKey(name: 'learning_id') final  int learningId;
@override@JsonKey(name: 'learning_nm') final  String learningNm;
 final  List<CurriculumModel> _curriculums;
@override List<CurriculumModel> get curriculums {
  if (_curriculums is EqualUnmodifiableListView) return _curriculums;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_curriculums);
}


/// Create a copy of LearningModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LearningModelCopyWith<_LearningModel> get copyWith => __$LearningModelCopyWithImpl<_LearningModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LearningModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LearningModel&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.learningNm, learningNm) || other.learningNm == learningNm)&&const DeepCollectionEquality().equals(other._curriculums, _curriculums));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,learningId,learningNm,const DeepCollectionEquality().hash(_curriculums));

@override
String toString() {
  return 'LearningModel(learningId: $learningId, learningNm: $learningNm, curriculums: $curriculums)';
}


}

/// @nodoc
abstract mixin class _$LearningModelCopyWith<$Res> implements $LearningModelCopyWith<$Res> {
  factory _$LearningModelCopyWith(_LearningModel value, $Res Function(_LearningModel) _then) = __$LearningModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'learning_nm') String learningNm, List<CurriculumModel> curriculums
});




}
/// @nodoc
class __$LearningModelCopyWithImpl<$Res>
    implements _$LearningModelCopyWith<$Res> {
  __$LearningModelCopyWithImpl(this._self, this._then);

  final _LearningModel _self;
  final $Res Function(_LearningModel) _then;

/// Create a copy of LearningModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? learningId = null,Object? learningNm = null,Object? curriculums = null,}) {
  return _then(_LearningModel(
learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,learningNm: null == learningNm ? _self.learningNm : learningNm // ignore: cast_nullable_to_non_nullable
as String,curriculums: null == curriculums ? _self._curriculums : curriculums // ignore: cast_nullable_to_non_nullable
as List<CurriculumModel>,
  ));
}


}


/// @nodoc
mixin _$CurriculumModel {

 int get id; String get name; String get description; String get note; String get image;
/// Create a copy of CurriculumModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurriculumModelCopyWith<CurriculumModel> get copyWith => _$CurriculumModelCopyWithImpl<CurriculumModel>(this as CurriculumModel, _$identity);

  /// Serializes this CurriculumModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurriculumModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.note, note) || other.note == note)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,note,image);

@override
String toString() {
  return 'CurriculumModel(id: $id, name: $name, description: $description, note: $note, image: $image)';
}


}

/// @nodoc
abstract mixin class $CurriculumModelCopyWith<$Res>  {
  factory $CurriculumModelCopyWith(CurriculumModel value, $Res Function(CurriculumModel) _then) = _$CurriculumModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description, String note, String image
});




}
/// @nodoc
class _$CurriculumModelCopyWithImpl<$Res>
    implements $CurriculumModelCopyWith<$Res> {
  _$CurriculumModelCopyWithImpl(this._self, this._then);

  final CurriculumModel _self;
  final $Res Function(CurriculumModel) _then;

/// Create a copy of CurriculumModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? note = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CurriculumModel].
extension CurriculumModelPatterns on CurriculumModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurriculumModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurriculumModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurriculumModel value)  $default,){
final _that = this;
switch (_that) {
case _CurriculumModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurriculumModel value)?  $default,){
final _that = this;
switch (_that) {
case _CurriculumModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String note,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurriculumModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.note,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String note,  String image)  $default,) {final _that = this;
switch (_that) {
case _CurriculumModel():
return $default(_that.id,_that.name,_that.description,_that.note,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String description,  String note,  String image)?  $default,) {final _that = this;
switch (_that) {
case _CurriculumModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.note,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurriculumModel implements CurriculumModel {
  const _CurriculumModel({required this.id, required this.name, required this.description, required this.note, required this.image});
  factory _CurriculumModel.fromJson(Map<String, dynamic> json) => _$CurriculumModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String description;
@override final  String note;
@override final  String image;

/// Create a copy of CurriculumModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurriculumModelCopyWith<_CurriculumModel> get copyWith => __$CurriculumModelCopyWithImpl<_CurriculumModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurriculumModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurriculumModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.note, note) || other.note == note)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,note,image);

@override
String toString() {
  return 'CurriculumModel(id: $id, name: $name, description: $description, note: $note, image: $image)';
}


}

/// @nodoc
abstract mixin class _$CurriculumModelCopyWith<$Res> implements $CurriculumModelCopyWith<$Res> {
  factory _$CurriculumModelCopyWith(_CurriculumModel value, $Res Function(_CurriculumModel) _then) = __$CurriculumModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description, String note, String image
});




}
/// @nodoc
class __$CurriculumModelCopyWithImpl<$Res>
    implements _$CurriculumModelCopyWith<$Res> {
  __$CurriculumModelCopyWithImpl(this._self, this._then);

  final _CurriculumModel _self;
  final $Res Function(_CurriculumModel) _then;

/// Create a copy of CurriculumModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? note = null,Object? image = null,}) {
  return _then(_CurriculumModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
