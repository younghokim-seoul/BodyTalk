// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 bool get isLoading; int get learningId; String get learningNm; List<CurriculumModel> get curriculums;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.learningNm, learningNm) || other.learningNm == learningNm)&&const DeepCollectionEquality().equals(other.curriculums, curriculums));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,learningId,learningNm,const DeepCollectionEquality().hash(curriculums));

@override
String toString() {
  return 'HomeState(isLoading: $isLoading, learningId: $learningId, learningNm: $learningNm, curriculums: $curriculums)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, int learningId, String learningNm, List<CurriculumModel> curriculums
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? learningId = null,Object? learningNm = null,Object? curriculums = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,learningNm: null == learningNm ? _self.learningNm : learningNm // ignore: cast_nullable_to_non_nullable
as String,curriculums: null == curriculums ? _self.curriculums : curriculums // ignore: cast_nullable_to_non_nullable
as List<CurriculumModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  int learningId,  String learningNm,  List<CurriculumModel> curriculums)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isLoading,_that.learningId,_that.learningNm,_that.curriculums);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  int learningId,  String learningNm,  List<CurriculumModel> curriculums)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.isLoading,_that.learningId,_that.learningNm,_that.curriculums);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  int learningId,  String learningNm,  List<CurriculumModel> curriculums)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isLoading,_that.learningId,_that.learningNm,_that.curriculums);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({this.isLoading = false, this.learningId = 0, this.learningNm = '', final  List<CurriculumModel> curriculums = const []}): _curriculums = curriculums;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  int learningId;
@override@JsonKey() final  String learningNm;
 final  List<CurriculumModel> _curriculums;
@override@JsonKey() List<CurriculumModel> get curriculums {
  if (_curriculums is EqualUnmodifiableListView) return _curriculums;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_curriculums);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.learningNm, learningNm) || other.learningNm == learningNm)&&const DeepCollectionEquality().equals(other._curriculums, _curriculums));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,learningId,learningNm,const DeepCollectionEquality().hash(_curriculums));

@override
String toString() {
  return 'HomeState(isLoading: $isLoading, learningId: $learningId, learningNm: $learningNm, curriculums: $curriculums)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, int learningId, String learningNm, List<CurriculumModel> curriculums
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? learningId = null,Object? learningNm = null,Object? curriculums = null,}) {
  return _then(_HomeState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,learningNm: null == learningNm ? _self.learningNm : learningNm // ignore: cast_nullable_to_non_nullable
as String,curriculums: null == curriculums ? _self._curriculums : curriculums // ignore: cast_nullable_to_non_nullable
as List<CurriculumModel>,
  ));
}


}

/// @nodoc
mixin _$HomeEvent {

 int get learningId; int get curriculumId;
/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeEventCopyWith<HomeEvent> get copyWith => _$HomeEventCopyWithImpl<HomeEvent>(this as HomeEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId));
}


@override
int get hashCode => Object.hash(runtimeType,learningId,curriculumId);

@override
String toString() {
  return 'HomeEvent(learningId: $learningId, curriculumId: $curriculumId)';
}


}

/// @nodoc
abstract mixin class $HomeEventCopyWith<$Res>  {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) _then) = _$HomeEventCopyWithImpl;
@useResult
$Res call({
 int learningId, int curriculumId
});




}
/// @nodoc
class _$HomeEventCopyWithImpl<$Res>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._self, this._then);

  final HomeEvent _self;
  final $Res Function(HomeEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? learningId = null,Object? curriculumId = null,}) {
  return _then(_self.copyWith(
learningId: null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,curriculumId: null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _HomeNavToDetail value)?  navToDetail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeNavToDetail() when navToDetail != null:
return navToDetail(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _HomeNavToDetail value)  navToDetail,}){
final _that = this;
switch (_that) {
case _HomeNavToDetail():
return navToDetail(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _HomeNavToDetail value)?  navToDetail,}){
final _that = this;
switch (_that) {
case _HomeNavToDetail() when navToDetail != null:
return navToDetail(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int learningId,  int curriculumId)?  navToDetail,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeNavToDetail() when navToDetail != null:
return navToDetail(_that.learningId,_that.curriculumId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int learningId,  int curriculumId)  navToDetail,}) {final _that = this;
switch (_that) {
case _HomeNavToDetail():
return navToDetail(_that.learningId,_that.curriculumId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int learningId,  int curriculumId)?  navToDetail,}) {final _that = this;
switch (_that) {
case _HomeNavToDetail() when navToDetail != null:
return navToDetail(_that.learningId,_that.curriculumId);case _:
  return null;

}
}

}

/// @nodoc


class _HomeNavToDetail implements HomeEvent {
  const _HomeNavToDetail(this.learningId, this.curriculumId);
  

@override final  int learningId;
@override final  int curriculumId;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeNavToDetailCopyWith<_HomeNavToDetail> get copyWith => __$HomeNavToDetailCopyWithImpl<_HomeNavToDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeNavToDetail&&(identical(other.learningId, learningId) || other.learningId == learningId)&&(identical(other.curriculumId, curriculumId) || other.curriculumId == curriculumId));
}


@override
int get hashCode => Object.hash(runtimeType,learningId,curriculumId);

@override
String toString() {
  return 'HomeEvent.navToDetail(learningId: $learningId, curriculumId: $curriculumId)';
}


}

/// @nodoc
abstract mixin class _$HomeNavToDetailCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$HomeNavToDetailCopyWith(_HomeNavToDetail value, $Res Function(_HomeNavToDetail) _then) = __$HomeNavToDetailCopyWithImpl;
@override @useResult
$Res call({
 int learningId, int curriculumId
});




}
/// @nodoc
class __$HomeNavToDetailCopyWithImpl<$Res>
    implements _$HomeNavToDetailCopyWith<$Res> {
  __$HomeNavToDetailCopyWithImpl(this._self, this._then);

  final _HomeNavToDetail _self;
  final $Res Function(_HomeNavToDetail) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? learningId = null,Object? curriculumId = null,}) {
  return _then(_HomeNavToDetail(
null == learningId ? _self.learningId : learningId // ignore: cast_nullable_to_non_nullable
as int,null == curriculumId ? _self.curriculumId : curriculumId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
