// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LearningDetailModel {

 CurriculumDetailModel get curriculum; PlanModel? get plan; PracticeModel? get practice; SubmitModel? get submit;
/// Create a copy of LearningDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LearningDetailModelCopyWith<LearningDetailModel> get copyWith => _$LearningDetailModelCopyWithImpl<LearningDetailModel>(this as LearningDetailModel, _$identity);

  /// Serializes this LearningDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LearningDetailModel&&(identical(other.curriculum, curriculum) || other.curriculum == curriculum)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.practice, practice) || other.practice == practice)&&(identical(other.submit, submit) || other.submit == submit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,curriculum,plan,practice,submit);

@override
String toString() {
  return 'LearningDetailModel(curriculum: $curriculum, plan: $plan, practice: $practice, submit: $submit)';
}


}

/// @nodoc
abstract mixin class $LearningDetailModelCopyWith<$Res>  {
  factory $LearningDetailModelCopyWith(LearningDetailModel value, $Res Function(LearningDetailModel) _then) = _$LearningDetailModelCopyWithImpl;
@useResult
$Res call({
 CurriculumDetailModel curriculum, PlanModel? plan, PracticeModel? practice, SubmitModel? submit
});


$CurriculumDetailModelCopyWith<$Res> get curriculum;$PlanModelCopyWith<$Res>? get plan;$PracticeModelCopyWith<$Res>? get practice;$SubmitModelCopyWith<$Res>? get submit;

}
/// @nodoc
class _$LearningDetailModelCopyWithImpl<$Res>
    implements $LearningDetailModelCopyWith<$Res> {
  _$LearningDetailModelCopyWithImpl(this._self, this._then);

  final LearningDetailModel _self;
  final $Res Function(LearningDetailModel) _then;

/// Create a copy of LearningDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? curriculum = null,Object? plan = freezed,Object? practice = freezed,Object? submit = freezed,}) {
  return _then(_self.copyWith(
curriculum: null == curriculum ? _self.curriculum : curriculum // ignore: cast_nullable_to_non_nullable
as CurriculumDetailModel,plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as PlanModel?,practice: freezed == practice ? _self.practice : practice // ignore: cast_nullable_to_non_nullable
as PracticeModel?,submit: freezed == submit ? _self.submit : submit // ignore: cast_nullable_to_non_nullable
as SubmitModel?,
  ));
}
/// Create a copy of LearningDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurriculumDetailModelCopyWith<$Res> get curriculum {
  
  return $CurriculumDetailModelCopyWith<$Res>(_self.curriculum, (value) {
    return _then(_self.copyWith(curriculum: value));
  });
}/// Create a copy of LearningDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlanModelCopyWith<$Res>? get plan {
    if (_self.plan == null) {
    return null;
  }

  return $PlanModelCopyWith<$Res>(_self.plan!, (value) {
    return _then(_self.copyWith(plan: value));
  });
}/// Create a copy of LearningDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PracticeModelCopyWith<$Res>? get practice {
    if (_self.practice == null) {
    return null;
  }

  return $PracticeModelCopyWith<$Res>(_self.practice!, (value) {
    return _then(_self.copyWith(practice: value));
  });
}/// Create a copy of LearningDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubmitModelCopyWith<$Res>? get submit {
    if (_self.submit == null) {
    return null;
  }

  return $SubmitModelCopyWith<$Res>(_self.submit!, (value) {
    return _then(_self.copyWith(submit: value));
  });
}
}


/// Adds pattern-matching-related methods to [LearningDetailModel].
extension LearningDetailModelPatterns on LearningDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LearningDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LearningDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LearningDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _LearningDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LearningDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _LearningDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CurriculumDetailModel curriculum,  PlanModel? plan,  PracticeModel? practice,  SubmitModel? submit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LearningDetailModel() when $default != null:
return $default(_that.curriculum,_that.plan,_that.practice,_that.submit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CurriculumDetailModel curriculum,  PlanModel? plan,  PracticeModel? practice,  SubmitModel? submit)  $default,) {final _that = this;
switch (_that) {
case _LearningDetailModel():
return $default(_that.curriculum,_that.plan,_that.practice,_that.submit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CurriculumDetailModel curriculum,  PlanModel? plan,  PracticeModel? practice,  SubmitModel? submit)?  $default,) {final _that = this;
switch (_that) {
case _LearningDetailModel() when $default != null:
return $default(_that.curriculum,_that.plan,_that.practice,_that.submit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LearningDetailModel implements LearningDetailModel {
  const _LearningDetailModel({required this.curriculum, required this.plan, required this.practice, required this.submit});
  factory _LearningDetailModel.fromJson(Map<String, dynamic> json) => _$LearningDetailModelFromJson(json);

@override final  CurriculumDetailModel curriculum;
@override final  PlanModel? plan;
@override final  PracticeModel? practice;
@override final  SubmitModel? submit;

/// Create a copy of LearningDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LearningDetailModelCopyWith<_LearningDetailModel> get copyWith => __$LearningDetailModelCopyWithImpl<_LearningDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LearningDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LearningDetailModel&&(identical(other.curriculum, curriculum) || other.curriculum == curriculum)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.practice, practice) || other.practice == practice)&&(identical(other.submit, submit) || other.submit == submit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,curriculum,plan,practice,submit);

@override
String toString() {
  return 'LearningDetailModel(curriculum: $curriculum, plan: $plan, practice: $practice, submit: $submit)';
}


}

/// @nodoc
abstract mixin class _$LearningDetailModelCopyWith<$Res> implements $LearningDetailModelCopyWith<$Res> {
  factory _$LearningDetailModelCopyWith(_LearningDetailModel value, $Res Function(_LearningDetailModel) _then) = __$LearningDetailModelCopyWithImpl;
@override @useResult
$Res call({
 CurriculumDetailModel curriculum, PlanModel? plan, PracticeModel? practice, SubmitModel? submit
});


@override $CurriculumDetailModelCopyWith<$Res> get curriculum;@override $PlanModelCopyWith<$Res>? get plan;@override $PracticeModelCopyWith<$Res>? get practice;@override $SubmitModelCopyWith<$Res>? get submit;

}
/// @nodoc
class __$LearningDetailModelCopyWithImpl<$Res>
    implements _$LearningDetailModelCopyWith<$Res> {
  __$LearningDetailModelCopyWithImpl(this._self, this._then);

  final _LearningDetailModel _self;
  final $Res Function(_LearningDetailModel) _then;

/// Create a copy of LearningDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? curriculum = null,Object? plan = freezed,Object? practice = freezed,Object? submit = freezed,}) {
  return _then(_LearningDetailModel(
curriculum: null == curriculum ? _self.curriculum : curriculum // ignore: cast_nullable_to_non_nullable
as CurriculumDetailModel,plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as PlanModel?,practice: freezed == practice ? _self.practice : practice // ignore: cast_nullable_to_non_nullable
as PracticeModel?,submit: freezed == submit ? _self.submit : submit // ignore: cast_nullable_to_non_nullable
as SubmitModel?,
  ));
}

/// Create a copy of LearningDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurriculumDetailModelCopyWith<$Res> get curriculum {
  
  return $CurriculumDetailModelCopyWith<$Res>(_self.curriculum, (value) {
    return _then(_self.copyWith(curriculum: value));
  });
}/// Create a copy of LearningDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlanModelCopyWith<$Res>? get plan {
    if (_self.plan == null) {
    return null;
  }

  return $PlanModelCopyWith<$Res>(_self.plan!, (value) {
    return _then(_self.copyWith(plan: value));
  });
}/// Create a copy of LearningDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PracticeModelCopyWith<$Res>? get practice {
    if (_self.practice == null) {
    return null;
  }

  return $PracticeModelCopyWith<$Res>(_self.practice!, (value) {
    return _then(_self.copyWith(practice: value));
  });
}/// Create a copy of LearningDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubmitModelCopyWith<$Res>? get submit {
    if (_self.submit == null) {
    return null;
  }

  return $SubmitModelCopyWith<$Res>(_self.submit!, (value) {
    return _then(_self.copyWith(submit: value));
  });
}
}


/// @nodoc
mixin _$CurriculumDetailModel {

 int get id; String get name; String get description; String get note; String get image; PlaceholdersModel get placeholders; TitlesModel? get titles;
/// Create a copy of CurriculumDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurriculumDetailModelCopyWith<CurriculumDetailModel> get copyWith => _$CurriculumDetailModelCopyWithImpl<CurriculumDetailModel>(this as CurriculumDetailModel, _$identity);

  /// Serializes this CurriculumDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurriculumDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.note, note) || other.note == note)&&(identical(other.image, image) || other.image == image)&&(identical(other.placeholders, placeholders) || other.placeholders == placeholders)&&(identical(other.titles, titles) || other.titles == titles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,note,image,placeholders,titles);

@override
String toString() {
  return 'CurriculumDetailModel(id: $id, name: $name, description: $description, note: $note, image: $image, placeholders: $placeholders, titles: $titles)';
}


}

/// @nodoc
abstract mixin class $CurriculumDetailModelCopyWith<$Res>  {
  factory $CurriculumDetailModelCopyWith(CurriculumDetailModel value, $Res Function(CurriculumDetailModel) _then) = _$CurriculumDetailModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description, String note, String image, PlaceholdersModel placeholders, TitlesModel? titles
});


$PlaceholdersModelCopyWith<$Res> get placeholders;$TitlesModelCopyWith<$Res>? get titles;

}
/// @nodoc
class _$CurriculumDetailModelCopyWithImpl<$Res>
    implements $CurriculumDetailModelCopyWith<$Res> {
  _$CurriculumDetailModelCopyWithImpl(this._self, this._then);

  final CurriculumDetailModel _self;
  final $Res Function(CurriculumDetailModel) _then;

/// Create a copy of CurriculumDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? note = null,Object? image = null,Object? placeholders = null,Object? titles = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,placeholders: null == placeholders ? _self.placeholders : placeholders // ignore: cast_nullable_to_non_nullable
as PlaceholdersModel,titles: freezed == titles ? _self.titles : titles // ignore: cast_nullable_to_non_nullable
as TitlesModel?,
  ));
}
/// Create a copy of CurriculumDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceholdersModelCopyWith<$Res> get placeholders {
  
  return $PlaceholdersModelCopyWith<$Res>(_self.placeholders, (value) {
    return _then(_self.copyWith(placeholders: value));
  });
}/// Create a copy of CurriculumDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TitlesModelCopyWith<$Res>? get titles {
    if (_self.titles == null) {
    return null;
  }

  return $TitlesModelCopyWith<$Res>(_self.titles!, (value) {
    return _then(_self.copyWith(titles: value));
  });
}
}


/// Adds pattern-matching-related methods to [CurriculumDetailModel].
extension CurriculumDetailModelPatterns on CurriculumDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurriculumDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurriculumDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurriculumDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _CurriculumDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurriculumDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _CurriculumDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String note,  String image,  PlaceholdersModel placeholders,  TitlesModel? titles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurriculumDetailModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.note,_that.image,_that.placeholders,_that.titles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String note,  String image,  PlaceholdersModel placeholders,  TitlesModel? titles)  $default,) {final _that = this;
switch (_that) {
case _CurriculumDetailModel():
return $default(_that.id,_that.name,_that.description,_that.note,_that.image,_that.placeholders,_that.titles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String description,  String note,  String image,  PlaceholdersModel placeholders,  TitlesModel? titles)?  $default,) {final _that = this;
switch (_that) {
case _CurriculumDetailModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.note,_that.image,_that.placeholders,_that.titles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurriculumDetailModel implements CurriculumDetailModel {
  const _CurriculumDetailModel({required this.id, required this.name, required this.description, required this.note, required this.image, required this.placeholders, this.titles});
  factory _CurriculumDetailModel.fromJson(Map<String, dynamic> json) => _$CurriculumDetailModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String description;
@override final  String note;
@override final  String image;
@override final  PlaceholdersModel placeholders;
@override final  TitlesModel? titles;

/// Create a copy of CurriculumDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurriculumDetailModelCopyWith<_CurriculumDetailModel> get copyWith => __$CurriculumDetailModelCopyWithImpl<_CurriculumDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurriculumDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurriculumDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.note, note) || other.note == note)&&(identical(other.image, image) || other.image == image)&&(identical(other.placeholders, placeholders) || other.placeholders == placeholders)&&(identical(other.titles, titles) || other.titles == titles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,note,image,placeholders,titles);

@override
String toString() {
  return 'CurriculumDetailModel(id: $id, name: $name, description: $description, note: $note, image: $image, placeholders: $placeholders, titles: $titles)';
}


}

/// @nodoc
abstract mixin class _$CurriculumDetailModelCopyWith<$Res> implements $CurriculumDetailModelCopyWith<$Res> {
  factory _$CurriculumDetailModelCopyWith(_CurriculumDetailModel value, $Res Function(_CurriculumDetailModel) _then) = __$CurriculumDetailModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description, String note, String image, PlaceholdersModel placeholders, TitlesModel? titles
});


@override $PlaceholdersModelCopyWith<$Res> get placeholders;@override $TitlesModelCopyWith<$Res>? get titles;

}
/// @nodoc
class __$CurriculumDetailModelCopyWithImpl<$Res>
    implements _$CurriculumDetailModelCopyWith<$Res> {
  __$CurriculumDetailModelCopyWithImpl(this._self, this._then);

  final _CurriculumDetailModel _self;
  final $Res Function(_CurriculumDetailModel) _then;

/// Create a copy of CurriculumDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? note = null,Object? image = null,Object? placeholders = null,Object? titles = freezed,}) {
  return _then(_CurriculumDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,placeholders: null == placeholders ? _self.placeholders : placeholders // ignore: cast_nullable_to_non_nullable
as PlaceholdersModel,titles: freezed == titles ? _self.titles : titles // ignore: cast_nullable_to_non_nullable
as TitlesModel?,
  ));
}

/// Create a copy of CurriculumDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceholdersModelCopyWith<$Res> get placeholders {
  
  return $PlaceholdersModelCopyWith<$Res>(_self.placeholders, (value) {
    return _then(_self.copyWith(placeholders: value));
  });
}/// Create a copy of CurriculumDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TitlesModelCopyWith<$Res>? get titles {
    if (_self.titles == null) {
    return null;
  }

  return $TitlesModelCopyWith<$Res>(_self.titles!, (value) {
    return _then(_self.copyWith(titles: value));
  });
}
}


/// @nodoc
mixin _$PlaceholdersModel {

 PlaceholderContentModel get plan; PlaceholderContentModel get practice;
/// Create a copy of PlaceholdersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceholdersModelCopyWith<PlaceholdersModel> get copyWith => _$PlaceholdersModelCopyWithImpl<PlaceholdersModel>(this as PlaceholdersModel, _$identity);

  /// Serializes this PlaceholdersModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceholdersModel&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.practice, practice) || other.practice == practice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,plan,practice);

@override
String toString() {
  return 'PlaceholdersModel(plan: $plan, practice: $practice)';
}


}

/// @nodoc
abstract mixin class $PlaceholdersModelCopyWith<$Res>  {
  factory $PlaceholdersModelCopyWith(PlaceholdersModel value, $Res Function(PlaceholdersModel) _then) = _$PlaceholdersModelCopyWithImpl;
@useResult
$Res call({
 PlaceholderContentModel plan, PlaceholderContentModel practice
});


$PlaceholderContentModelCopyWith<$Res> get plan;$PlaceholderContentModelCopyWith<$Res> get practice;

}
/// @nodoc
class _$PlaceholdersModelCopyWithImpl<$Res>
    implements $PlaceholdersModelCopyWith<$Res> {
  _$PlaceholdersModelCopyWithImpl(this._self, this._then);

  final PlaceholdersModel _self;
  final $Res Function(PlaceholdersModel) _then;

/// Create a copy of PlaceholdersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? plan = null,Object? practice = null,}) {
  return _then(_self.copyWith(
plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as PlaceholderContentModel,practice: null == practice ? _self.practice : practice // ignore: cast_nullable_to_non_nullable
as PlaceholderContentModel,
  ));
}
/// Create a copy of PlaceholdersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceholderContentModelCopyWith<$Res> get plan {
  
  return $PlaceholderContentModelCopyWith<$Res>(_self.plan, (value) {
    return _then(_self.copyWith(plan: value));
  });
}/// Create a copy of PlaceholdersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceholderContentModelCopyWith<$Res> get practice {
  
  return $PlaceholderContentModelCopyWith<$Res>(_self.practice, (value) {
    return _then(_self.copyWith(practice: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlaceholdersModel].
extension PlaceholdersModelPatterns on PlaceholdersModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaceholdersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaceholdersModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaceholdersModel value)  $default,){
final _that = this;
switch (_that) {
case _PlaceholdersModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaceholdersModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlaceholdersModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PlaceholderContentModel plan,  PlaceholderContentModel practice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaceholdersModel() when $default != null:
return $default(_that.plan,_that.practice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PlaceholderContentModel plan,  PlaceholderContentModel practice)  $default,) {final _that = this;
switch (_that) {
case _PlaceholdersModel():
return $default(_that.plan,_that.practice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PlaceholderContentModel plan,  PlaceholderContentModel practice)?  $default,) {final _that = this;
switch (_that) {
case _PlaceholdersModel() when $default != null:
return $default(_that.plan,_that.practice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaceholdersModel implements PlaceholdersModel {
  const _PlaceholdersModel({required this.plan, required this.practice});
  factory _PlaceholdersModel.fromJson(Map<String, dynamic> json) => _$PlaceholdersModelFromJson(json);

@override final  PlaceholderContentModel plan;
@override final  PlaceholderContentModel practice;

/// Create a copy of PlaceholdersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceholdersModelCopyWith<_PlaceholdersModel> get copyWith => __$PlaceholdersModelCopyWithImpl<_PlaceholdersModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceholdersModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceholdersModel&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.practice, practice) || other.practice == practice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,plan,practice);

@override
String toString() {
  return 'PlaceholdersModel(plan: $plan, practice: $practice)';
}


}

/// @nodoc
abstract mixin class _$PlaceholdersModelCopyWith<$Res> implements $PlaceholdersModelCopyWith<$Res> {
  factory _$PlaceholdersModelCopyWith(_PlaceholdersModel value, $Res Function(_PlaceholdersModel) _then) = __$PlaceholdersModelCopyWithImpl;
@override @useResult
$Res call({
 PlaceholderContentModel plan, PlaceholderContentModel practice
});


@override $PlaceholderContentModelCopyWith<$Res> get plan;@override $PlaceholderContentModelCopyWith<$Res> get practice;

}
/// @nodoc
class __$PlaceholdersModelCopyWithImpl<$Res>
    implements _$PlaceholdersModelCopyWith<$Res> {
  __$PlaceholdersModelCopyWithImpl(this._self, this._then);

  final _PlaceholdersModel _self;
  final $Res Function(_PlaceholdersModel) _then;

/// Create a copy of PlaceholdersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? plan = null,Object? practice = null,}) {
  return _then(_PlaceholdersModel(
plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as PlaceholderContentModel,practice: null == practice ? _self.practice : practice // ignore: cast_nullable_to_non_nullable
as PlaceholderContentModel,
  ));
}

/// Create a copy of PlaceholdersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceholderContentModelCopyWith<$Res> get plan {
  
  return $PlaceholderContentModelCopyWith<$Res>(_self.plan, (value) {
    return _then(_self.copyWith(plan: value));
  });
}/// Create a copy of PlaceholdersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceholderContentModelCopyWith<$Res> get practice {
  
  return $PlaceholderContentModelCopyWith<$Res>(_self.practice, (value) {
    return _then(_self.copyWith(practice: value));
  });
}
}


/// @nodoc
mixin _$PlaceholderContentModel {

 String get recognition; String get motive; String get active; String get context;
/// Create a copy of PlaceholderContentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceholderContentModelCopyWith<PlaceholderContentModel> get copyWith => _$PlaceholderContentModelCopyWithImpl<PlaceholderContentModel>(this as PlaceholderContentModel, _$identity);

  /// Serializes this PlaceholderContentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceholderContentModel&&(identical(other.recognition, recognition) || other.recognition == recognition)&&(identical(other.motive, motive) || other.motive == motive)&&(identical(other.active, active) || other.active == active)&&(identical(other.context, context) || other.context == context));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recognition,motive,active,context);

@override
String toString() {
  return 'PlaceholderContentModel(recognition: $recognition, motive: $motive, active: $active, context: $context)';
}


}

/// @nodoc
abstract mixin class $PlaceholderContentModelCopyWith<$Res>  {
  factory $PlaceholderContentModelCopyWith(PlaceholderContentModel value, $Res Function(PlaceholderContentModel) _then) = _$PlaceholderContentModelCopyWithImpl;
@useResult
$Res call({
 String recognition, String motive, String active, String context
});




}
/// @nodoc
class _$PlaceholderContentModelCopyWithImpl<$Res>
    implements $PlaceholderContentModelCopyWith<$Res> {
  _$PlaceholderContentModelCopyWithImpl(this._self, this._then);

  final PlaceholderContentModel _self;
  final $Res Function(PlaceholderContentModel) _then;

/// Create a copy of PlaceholderContentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recognition = null,Object? motive = null,Object? active = null,Object? context = null,}) {
  return _then(_self.copyWith(
recognition: null == recognition ? _self.recognition : recognition // ignore: cast_nullable_to_non_nullable
as String,motive: null == motive ? _self.motive : motive // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaceholderContentModel].
extension PlaceholderContentModelPatterns on PlaceholderContentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaceholderContentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaceholderContentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaceholderContentModel value)  $default,){
final _that = this;
switch (_that) {
case _PlaceholderContentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaceholderContentModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlaceholderContentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String recognition,  String motive,  String active,  String context)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaceholderContentModel() when $default != null:
return $default(_that.recognition,_that.motive,_that.active,_that.context);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String recognition,  String motive,  String active,  String context)  $default,) {final _that = this;
switch (_that) {
case _PlaceholderContentModel():
return $default(_that.recognition,_that.motive,_that.active,_that.context);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String recognition,  String motive,  String active,  String context)?  $default,) {final _that = this;
switch (_that) {
case _PlaceholderContentModel() when $default != null:
return $default(_that.recognition,_that.motive,_that.active,_that.context);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaceholderContentModel implements PlaceholderContentModel {
  const _PlaceholderContentModel({required this.recognition, required this.motive, required this.active, required this.context});
  factory _PlaceholderContentModel.fromJson(Map<String, dynamic> json) => _$PlaceholderContentModelFromJson(json);

@override final  String recognition;
@override final  String motive;
@override final  String active;
@override final  String context;

/// Create a copy of PlaceholderContentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceholderContentModelCopyWith<_PlaceholderContentModel> get copyWith => __$PlaceholderContentModelCopyWithImpl<_PlaceholderContentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceholderContentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceholderContentModel&&(identical(other.recognition, recognition) || other.recognition == recognition)&&(identical(other.motive, motive) || other.motive == motive)&&(identical(other.active, active) || other.active == active)&&(identical(other.context, context) || other.context == context));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recognition,motive,active,context);

@override
String toString() {
  return 'PlaceholderContentModel(recognition: $recognition, motive: $motive, active: $active, context: $context)';
}


}

/// @nodoc
abstract mixin class _$PlaceholderContentModelCopyWith<$Res> implements $PlaceholderContentModelCopyWith<$Res> {
  factory _$PlaceholderContentModelCopyWith(_PlaceholderContentModel value, $Res Function(_PlaceholderContentModel) _then) = __$PlaceholderContentModelCopyWithImpl;
@override @useResult
$Res call({
 String recognition, String motive, String active, String context
});




}
/// @nodoc
class __$PlaceholderContentModelCopyWithImpl<$Res>
    implements _$PlaceholderContentModelCopyWith<$Res> {
  __$PlaceholderContentModelCopyWithImpl(this._self, this._then);

  final _PlaceholderContentModel _self;
  final $Res Function(_PlaceholderContentModel) _then;

/// Create a copy of PlaceholderContentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recognition = null,Object? motive = null,Object? active = null,Object? context = null,}) {
  return _then(_PlaceholderContentModel(
recognition: null == recognition ? _self.recognition : recognition // ignore: cast_nullable_to_non_nullable
as String,motive: null == motive ? _self.motive : motive // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TitlesModel {

 TitleContentModel get plan; TitleContentModel get practice;
/// Create a copy of TitlesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TitlesModelCopyWith<TitlesModel> get copyWith => _$TitlesModelCopyWithImpl<TitlesModel>(this as TitlesModel, _$identity);

  /// Serializes this TitlesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TitlesModel&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.practice, practice) || other.practice == practice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,plan,practice);

@override
String toString() {
  return 'TitlesModel(plan: $plan, practice: $practice)';
}


}

/// @nodoc
abstract mixin class $TitlesModelCopyWith<$Res>  {
  factory $TitlesModelCopyWith(TitlesModel value, $Res Function(TitlesModel) _then) = _$TitlesModelCopyWithImpl;
@useResult
$Res call({
 TitleContentModel plan, TitleContentModel practice
});


$TitleContentModelCopyWith<$Res> get plan;$TitleContentModelCopyWith<$Res> get practice;

}
/// @nodoc
class _$TitlesModelCopyWithImpl<$Res>
    implements $TitlesModelCopyWith<$Res> {
  _$TitlesModelCopyWithImpl(this._self, this._then);

  final TitlesModel _self;
  final $Res Function(TitlesModel) _then;

/// Create a copy of TitlesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? plan = null,Object? practice = null,}) {
  return _then(_self.copyWith(
plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as TitleContentModel,practice: null == practice ? _self.practice : practice // ignore: cast_nullable_to_non_nullable
as TitleContentModel,
  ));
}
/// Create a copy of TitlesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TitleContentModelCopyWith<$Res> get plan {
  
  return $TitleContentModelCopyWith<$Res>(_self.plan, (value) {
    return _then(_self.copyWith(plan: value));
  });
}/// Create a copy of TitlesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TitleContentModelCopyWith<$Res> get practice {
  
  return $TitleContentModelCopyWith<$Res>(_self.practice, (value) {
    return _then(_self.copyWith(practice: value));
  });
}
}


/// Adds pattern-matching-related methods to [TitlesModel].
extension TitlesModelPatterns on TitlesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TitlesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TitlesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TitlesModel value)  $default,){
final _that = this;
switch (_that) {
case _TitlesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TitlesModel value)?  $default,){
final _that = this;
switch (_that) {
case _TitlesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TitleContentModel plan,  TitleContentModel practice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TitlesModel() when $default != null:
return $default(_that.plan,_that.practice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TitleContentModel plan,  TitleContentModel practice)  $default,) {final _that = this;
switch (_that) {
case _TitlesModel():
return $default(_that.plan,_that.practice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TitleContentModel plan,  TitleContentModel practice)?  $default,) {final _that = this;
switch (_that) {
case _TitlesModel() when $default != null:
return $default(_that.plan,_that.practice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TitlesModel implements TitlesModel {
  const _TitlesModel({required this.plan, required this.practice});
  factory _TitlesModel.fromJson(Map<String, dynamic> json) => _$TitlesModelFromJson(json);

@override final  TitleContentModel plan;
@override final  TitleContentModel practice;

/// Create a copy of TitlesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TitlesModelCopyWith<_TitlesModel> get copyWith => __$TitlesModelCopyWithImpl<_TitlesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TitlesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TitlesModel&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.practice, practice) || other.practice == practice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,plan,practice);

@override
String toString() {
  return 'TitlesModel(plan: $plan, practice: $practice)';
}


}

/// @nodoc
abstract mixin class _$TitlesModelCopyWith<$Res> implements $TitlesModelCopyWith<$Res> {
  factory _$TitlesModelCopyWith(_TitlesModel value, $Res Function(_TitlesModel) _then) = __$TitlesModelCopyWithImpl;
@override @useResult
$Res call({
 TitleContentModel plan, TitleContentModel practice
});


@override $TitleContentModelCopyWith<$Res> get plan;@override $TitleContentModelCopyWith<$Res> get practice;

}
/// @nodoc
class __$TitlesModelCopyWithImpl<$Res>
    implements _$TitlesModelCopyWith<$Res> {
  __$TitlesModelCopyWithImpl(this._self, this._then);

  final _TitlesModel _self;
  final $Res Function(_TitlesModel) _then;

/// Create a copy of TitlesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? plan = null,Object? practice = null,}) {
  return _then(_TitlesModel(
plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as TitleContentModel,practice: null == practice ? _self.practice : practice // ignore: cast_nullable_to_non_nullable
as TitleContentModel,
  ));
}

/// Create a copy of TitlesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TitleContentModelCopyWith<$Res> get plan {
  
  return $TitleContentModelCopyWith<$Res>(_self.plan, (value) {
    return _then(_self.copyWith(plan: value));
  });
}/// Create a copy of TitlesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TitleContentModelCopyWith<$Res> get practice {
  
  return $TitleContentModelCopyWith<$Res>(_self.practice, (value) {
    return _then(_self.copyWith(practice: value));
  });
}
}


/// @nodoc
mixin _$TitleContentModel {

 String get recognition; String get motive; String get active; String get context;
/// Create a copy of TitleContentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TitleContentModelCopyWith<TitleContentModel> get copyWith => _$TitleContentModelCopyWithImpl<TitleContentModel>(this as TitleContentModel, _$identity);

  /// Serializes this TitleContentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TitleContentModel&&(identical(other.recognition, recognition) || other.recognition == recognition)&&(identical(other.motive, motive) || other.motive == motive)&&(identical(other.active, active) || other.active == active)&&(identical(other.context, context) || other.context == context));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recognition,motive,active,context);

@override
String toString() {
  return 'TitleContentModel(recognition: $recognition, motive: $motive, active: $active, context: $context)';
}


}

/// @nodoc
abstract mixin class $TitleContentModelCopyWith<$Res>  {
  factory $TitleContentModelCopyWith(TitleContentModel value, $Res Function(TitleContentModel) _then) = _$TitleContentModelCopyWithImpl;
@useResult
$Res call({
 String recognition, String motive, String active, String context
});




}
/// @nodoc
class _$TitleContentModelCopyWithImpl<$Res>
    implements $TitleContentModelCopyWith<$Res> {
  _$TitleContentModelCopyWithImpl(this._self, this._then);

  final TitleContentModel _self;
  final $Res Function(TitleContentModel) _then;

/// Create a copy of TitleContentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recognition = null,Object? motive = null,Object? active = null,Object? context = null,}) {
  return _then(_self.copyWith(
recognition: null == recognition ? _self.recognition : recognition // ignore: cast_nullable_to_non_nullable
as String,motive: null == motive ? _self.motive : motive // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TitleContentModel].
extension TitleContentModelPatterns on TitleContentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TitleContentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TitleContentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TitleContentModel value)  $default,){
final _that = this;
switch (_that) {
case _TitleContentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TitleContentModel value)?  $default,){
final _that = this;
switch (_that) {
case _TitleContentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String recognition,  String motive,  String active,  String context)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TitleContentModel() when $default != null:
return $default(_that.recognition,_that.motive,_that.active,_that.context);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String recognition,  String motive,  String active,  String context)  $default,) {final _that = this;
switch (_that) {
case _TitleContentModel():
return $default(_that.recognition,_that.motive,_that.active,_that.context);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String recognition,  String motive,  String active,  String context)?  $default,) {final _that = this;
switch (_that) {
case _TitleContentModel() when $default != null:
return $default(_that.recognition,_that.motive,_that.active,_that.context);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TitleContentModel implements TitleContentModel {
  const _TitleContentModel({required this.recognition, required this.motive, required this.active, required this.context});
  factory _TitleContentModel.fromJson(Map<String, dynamic> json) => _$TitleContentModelFromJson(json);

@override final  String recognition;
@override final  String motive;
@override final  String active;
@override final  String context;

/// Create a copy of TitleContentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TitleContentModelCopyWith<_TitleContentModel> get copyWith => __$TitleContentModelCopyWithImpl<_TitleContentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TitleContentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TitleContentModel&&(identical(other.recognition, recognition) || other.recognition == recognition)&&(identical(other.motive, motive) || other.motive == motive)&&(identical(other.active, active) || other.active == active)&&(identical(other.context, context) || other.context == context));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recognition,motive,active,context);

@override
String toString() {
  return 'TitleContentModel(recognition: $recognition, motive: $motive, active: $active, context: $context)';
}


}

/// @nodoc
abstract mixin class _$TitleContentModelCopyWith<$Res> implements $TitleContentModelCopyWith<$Res> {
  factory _$TitleContentModelCopyWith(_TitleContentModel value, $Res Function(_TitleContentModel) _then) = __$TitleContentModelCopyWithImpl;
@override @useResult
$Res call({
 String recognition, String motive, String active, String context
});




}
/// @nodoc
class __$TitleContentModelCopyWithImpl<$Res>
    implements _$TitleContentModelCopyWith<$Res> {
  __$TitleContentModelCopyWithImpl(this._self, this._then);

  final _TitleContentModel _self;
  final $Res Function(_TitleContentModel) _then;

/// Create a copy of TitleContentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recognition = null,Object? motive = null,Object? active = null,Object? context = null,}) {
  return _then(_TitleContentModel(
recognition: null == recognition ? _self.recognition : recognition // ignore: cast_nullable_to_non_nullable
as String,motive: null == motive ? _self.motive : motive // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PlanModel {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'learning_id') int get learningId;@JsonKey(name: 'curriculum_id') int get curriculumId;@JsonKey(name: 'plan_id') int get planId; String get recognition; String get motive; String get active; String get context;
/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanModelCopyWith<PlanModel> get copyWith => _$PlanModelCopyWithImpl<PlanModel>(this as PlanModel, _$identity);

  /// Serializes this PlanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.recognition, recognition) || other.recognition == recognition)&&(identical(other.motive, motive) || other.motive == motive)&&(identical(other.active, active) || other.active == active)&&(identical(other.context, context) || other.context == context));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,learningId,curriculumId,planId,recognition,motive,active,context);

@override
String toString() {
  return 'PlanModel(userId: $userId, learningId: $learningId, curriculumId: $curriculumId, planId: $planId, recognition: $recognition, motive: $motive, active: $active, context: $context)';
}


}

/// @nodoc
abstract mixin class $PlanModelCopyWith<$Res>  {
  factory $PlanModelCopyWith(PlanModel value, $Res Function(PlanModel) _then) = _$PlanModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'plan_id') int planId, String recognition, String motive, String active, String context
});




}
/// @nodoc
class _$PlanModelCopyWithImpl<$Res>
    implements $PlanModelCopyWith<$Res> {
  _$PlanModelCopyWithImpl(this._self, this._then);

  final PlanModel _self;
  final $Res Function(PlanModel) _then;

/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? learningId = null,Object? curriculumId = null,Object? planId = null,Object? recognition = null,Object? motive = null,Object? active = null,Object? context = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as int,recognition: null == recognition ? _self.recognition : recognition // ignore: cast_nullable_to_non_nullable
as String,motive: null == motive ? _self.motive : motive // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlanModel].
extension PlanModelPatterns on PlanModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlanModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlanModel value)  $default,){
final _that = this;
switch (_that) {
case _PlanModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlanModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlanModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'plan_id')  int planId,  String recognition,  String motive,  String active,  String context)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlanModel() when $default != null:
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.planId,_that.recognition,_that.motive,_that.active,_that.context);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'plan_id')  int planId,  String recognition,  String motive,  String active,  String context)  $default,) {final _that = this;
switch (_that) {
case _PlanModel():
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.planId,_that.recognition,_that.motive,_that.active,_that.context);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'plan_id')  int planId,  String recognition,  String motive,  String active,  String context)?  $default,) {final _that = this;
switch (_that) {
case _PlanModel() when $default != null:
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.planId,_that.recognition,_that.motive,_that.active,_that.context);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlanModel implements PlanModel {
  const _PlanModel({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'learning_id') required this.learningId, @JsonKey(name: 'curriculum_id') required this.curriculumId, @JsonKey(name: 'plan_id') required this.planId, required this.recognition, required this.motive, required this.active, required this.context});
  factory _PlanModel.fromJson(Map<String, dynamic> json) => _$PlanModelFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'learning_id') final  int learningId;
@override@JsonKey(name: 'curriculum_id') final  int curriculumId;
@override@JsonKey(name: 'plan_id') final  int planId;
@override final  String recognition;
@override final  String motive;
@override final  String active;
@override final  String context;

/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanModelCopyWith<_PlanModel> get copyWith => __$PlanModelCopyWithImpl<_PlanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlanModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.recognition, recognition) || other.recognition == recognition)&&(identical(other.motive, motive) || other.motive == motive)&&(identical(other.active, active) || other.active == active)&&(identical(other.context, context) || other.context == context));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,learningId,curriculumId,planId,recognition,motive,active,context);

@override
String toString() {
  return 'PlanModel(userId: $userId, learningId: $learningId, curriculumId: $curriculumId, planId: $planId, recognition: $recognition, motive: $motive, active: $active, context: $context)';
}


}

/// @nodoc
abstract mixin class _$PlanModelCopyWith<$Res> implements $PlanModelCopyWith<$Res> {
  factory _$PlanModelCopyWith(_PlanModel value, $Res Function(_PlanModel) _then) = __$PlanModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'plan_id') int planId, String recognition, String motive, String active, String context
});




}
/// @nodoc
class __$PlanModelCopyWithImpl<$Res>
    implements _$PlanModelCopyWith<$Res> {
  __$PlanModelCopyWithImpl(this._self, this._then);

  final _PlanModel _self;
  final $Res Function(_PlanModel) _then;

/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? learningId = null,Object? curriculumId = null,Object? planId = null,Object? recognition = null,Object? motive = null,Object? active = null,Object? context = null,}) {
  return _then(_PlanModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as int,recognition: null == recognition ? _self.recognition : recognition // ignore: cast_nullable_to_non_nullable
as String,motive: null == motive ? _self.motive : motive // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PracticeModel {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'learning_id') int get learningId;@JsonKey(name: 'curriculum_id') int get curriculumId;@JsonKey(name: 'practice_id') int get practiceId;@JsonKey(name: 'practice_dt') DateTime get practiceDt; String get content;
/// Create a copy of PracticeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PracticeModelCopyWith<PracticeModel> get copyWith => _$PracticeModelCopyWithImpl<PracticeModel>(this as PracticeModel, _$identity);

  /// Serializes this PracticeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PracticeModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.practiceId, practiceId) || other.practiceId == practiceId)&&(identical(other.practiceDt, practiceDt) || other.practiceDt == practiceDt)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,learningId,curriculumId,practiceId,practiceDt,content);

@override
String toString() {
  return 'PracticeModel(userId: $userId, learningId: $learningId, curriculumId: $curriculumId, practiceId: $practiceId, practiceDt: $practiceDt, content: $content)';
}


}

/// @nodoc
abstract mixin class $PracticeModelCopyWith<$Res>  {
  factory $PracticeModelCopyWith(PracticeModel value, $Res Function(PracticeModel) _then) = _$PracticeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'practice_id') int practiceId,@JsonKey(name: 'practice_dt') DateTime practiceDt, String content
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'practice_id')  int practiceId, @JsonKey(name: 'practice_dt')  DateTime practiceDt,  String content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PracticeModel() when $default != null:
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
case _PracticeModel():
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
case _PracticeModel() when $default != null:
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.practiceId,_that.practiceDt,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PracticeModel implements PracticeModel {
  const _PracticeModel({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'learning_id') required this.learningId, @JsonKey(name: 'curriculum_id') required this.curriculumId, @JsonKey(name: 'practice_id') required this.practiceId, @JsonKey(name: 'practice_dt') required this.practiceDt, required this.content});
  factory _PracticeModel.fromJson(Map<String, dynamic> json) => _$PracticeModelFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'learning_id') final  int learningId;
@override@JsonKey(name: 'curriculum_id') final  int curriculumId;
@override@JsonKey(name: 'practice_id') final  int practiceId;
@override@JsonKey(name: 'practice_dt') final  DateTime practiceDt;
@override final  String content;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PracticeModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.practiceId, practiceId) || other.practiceId == practiceId)&&(identical(other.practiceDt, practiceDt) || other.practiceDt == practiceDt)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,learningId,curriculumId,practiceId,practiceDt,content);

@override
String toString() {
  return 'PracticeModel(userId: $userId, learningId: $learningId, curriculumId: $curriculumId, practiceId: $practiceId, practiceDt: $practiceDt, content: $content)';
}


}

/// @nodoc
abstract mixin class _$PracticeModelCopyWith<$Res> implements $PracticeModelCopyWith<$Res> {
  factory _$PracticeModelCopyWith(_PracticeModel value, $Res Function(_PracticeModel) _then) = __$PracticeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'practice_id') int practiceId,@JsonKey(name: 'practice_dt') DateTime practiceDt, String content
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
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? learningId = null,Object? curriculumId = null,Object? practiceId = null,Object? practiceDt = null,Object? content = null,}) {
  return _then(_PracticeModel(
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


/// @nodoc
mixin _$SubmitModel {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'learning_id') int get learningId;@JsonKey(name: 'curriculum_id') int get curriculumId;@JsonKey(name: 'submit_id') int get submitId; String? get video; String? get question; String? get answer;
/// Create a copy of SubmitModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitModelCopyWith<SubmitModel> get copyWith => _$SubmitModelCopyWithImpl<SubmitModel>(this as SubmitModel, _$identity);

  /// Serializes this SubmitModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.submitId, submitId) || other.submitId == submitId)&&(identical(other.video, video) || other.video == video)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,learningId,curriculumId,submitId,video,question,answer);

@override
String toString() {
  return 'SubmitModel(userId: $userId, learningId: $learningId, curriculumId: $curriculumId, submitId: $submitId, video: $video, question: $question, answer: $answer)';
}


}

/// @nodoc
abstract mixin class $SubmitModelCopyWith<$Res>  {
  factory $SubmitModelCopyWith(SubmitModel value, $Res Function(SubmitModel) _then) = _$SubmitModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'submit_id') int submitId, String? video, String? question, String? answer
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
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? learningId = null,Object? curriculumId = null,Object? submitId = null,Object? video = freezed,Object? question = freezed,Object? answer = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,submitId: null == submitId ? _self.submitId : submitId // ignore: cast_nullable_to_non_nullable
as int,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'submit_id')  int submitId,  String? video,  String? question,  String? answer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitModel() when $default != null:
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.submitId,_that.video,_that.question,_that.answer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'submit_id')  int submitId,  String? video,  String? question,  String? answer)  $default,) {final _that = this;
switch (_that) {
case _SubmitModel():
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.submitId,_that.video,_that.question,_that.answer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'learning_id')  int learningId, @JsonKey(name: 'curriculum_id')  int curriculumId, @JsonKey(name: 'submit_id')  int submitId,  String? video,  String? question,  String? answer)?  $default,) {final _that = this;
switch (_that) {
case _SubmitModel() when $default != null:
return $default(_that.userId,_that.learningId,_that.curriculumId,_that.submitId,_that.video,_that.question,_that.answer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubmitModel implements SubmitModel {
  const _SubmitModel({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'learning_id') required this.learningId, @JsonKey(name: 'curriculum_id') required this.curriculumId, @JsonKey(name: 'submit_id') required this.submitId, this.video, this.question, this.answer});
  factory _SubmitModel.fromJson(Map<String, dynamic> json) => _$SubmitModelFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'learning_id') final  int learningId;
@override@JsonKey(name: 'curriculum_id') final  int curriculumId;
@override@JsonKey(name: 'submit_id') final  int submitId;
@override final  String? video;
@override final  String? question;
@override final  String? answer;

/// Create a copy of SubmitModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitModelCopyWith<_SubmitModel> get copyWith => __$SubmitModelCopyWithImpl<_SubmitModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmitModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId)&&(identical(other.submitId, submitId) || other.submitId == submitId)&&(identical(other.video, video) || other.video == video)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,learningId,curriculumId,submitId,video,question,answer);

@override
String toString() {
  return 'SubmitModel(userId: $userId, learningId: $learningId, curriculumId: $curriculumId, submitId: $submitId, video: $video, question: $question, answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$SubmitModelCopyWith<$Res> implements $SubmitModelCopyWith<$Res> {
  factory _$SubmitModelCopyWith(_SubmitModel value, $Res Function(_SubmitModel) _then) = __$SubmitModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'learning_id') int learningId,@JsonKey(name: 'curriculum_id') int curriculumId,@JsonKey(name: 'submit_id') int submitId, String? video, String? question, String? answer
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
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? learningId = null,Object? curriculumId = null,Object? submitId = null,Object? video = freezed,Object? question = freezed,Object? answer = freezed,}) {
  return _then(_SubmitModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,submitId: null == submitId ? _self.submitId : submitId // ignore: cast_nullable_to_non_nullable
as int,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
