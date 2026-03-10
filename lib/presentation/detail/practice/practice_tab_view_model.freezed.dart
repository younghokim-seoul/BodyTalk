// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_tab_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PracticeTabEvent implements DiagnosticableTreeMixin {

 String get message;
/// Create a copy of PracticeTabEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PracticeTabEventCopyWith<PracticeTabEvent> get copyWith => _$PracticeTabEventCopyWithImpl<PracticeTabEvent>(this as PracticeTabEvent, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PracticeTabEvent'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PracticeTabEvent&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PracticeTabEvent(message: $message)';
}


}

/// @nodoc
abstract mixin class $PracticeTabEventCopyWith<$Res>  {
  factory $PracticeTabEventCopyWith(PracticeTabEvent value, $Res Function(PracticeTabEvent) _then) = _$PracticeTabEventCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PracticeTabEventCopyWithImpl<$Res>
    implements $PracticeTabEventCopyWith<$Res> {
  _$PracticeTabEventCopyWithImpl(this._self, this._then);

  final PracticeTabEvent _self;
  final $Res Function(PracticeTabEvent) _then;

/// Create a copy of PracticeTabEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PracticeTabEvent].
extension PracticeTabEventPatterns on PracticeTabEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PracticeTabToastMessage value)?  toastMessage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PracticeTabToastMessage() when toastMessage != null:
return toastMessage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PracticeTabToastMessage value)  toastMessage,}){
final _that = this;
switch (_that) {
case _PracticeTabToastMessage():
return toastMessage(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PracticeTabToastMessage value)?  toastMessage,}){
final _that = this;
switch (_that) {
case _PracticeTabToastMessage() when toastMessage != null:
return toastMessage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  toastMessage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PracticeTabToastMessage() when toastMessage != null:
return toastMessage(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  toastMessage,}) {final _that = this;
switch (_that) {
case _PracticeTabToastMessage():
return toastMessage(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  toastMessage,}) {final _that = this;
switch (_that) {
case _PracticeTabToastMessage() when toastMessage != null:
return toastMessage(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _PracticeTabToastMessage with DiagnosticableTreeMixin implements PracticeTabEvent {
  const _PracticeTabToastMessage(this.message);
  

@override final  String message;

/// Create a copy of PracticeTabEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PracticeTabToastMessageCopyWith<_PracticeTabToastMessage> get copyWith => __$PracticeTabToastMessageCopyWithImpl<_PracticeTabToastMessage>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PracticeTabEvent.toastMessage'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PracticeTabToastMessage&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PracticeTabEvent.toastMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class _$PracticeTabToastMessageCopyWith<$Res> implements $PracticeTabEventCopyWith<$Res> {
  factory _$PracticeTabToastMessageCopyWith(_PracticeTabToastMessage value, $Res Function(_PracticeTabToastMessage) _then) = __$PracticeTabToastMessageCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$PracticeTabToastMessageCopyWithImpl<$Res>
    implements _$PracticeTabToastMessageCopyWith<$Res> {
  __$PracticeTabToastMessageCopyWithImpl(this._self, this._then);

  final _PracticeTabToastMessage _self;
  final $Res Function(_PracticeTabToastMessage) _then;

/// Create a copy of PracticeTabEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_PracticeTabToastMessage(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
