// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_tab_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlanTabEvent implements DiagnosticableTreeMixin {

 String get message;
/// Create a copy of PlanTabEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanTabEventCopyWith<PlanTabEvent> get copyWith => _$PlanTabEventCopyWithImpl<PlanTabEvent>(this as PlanTabEvent, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PlanTabEvent'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanTabEvent&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PlanTabEvent(message: $message)';
}


}

/// @nodoc
abstract mixin class $PlanTabEventCopyWith<$Res>  {
  factory $PlanTabEventCopyWith(PlanTabEvent value, $Res Function(PlanTabEvent) _then) = _$PlanTabEventCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PlanTabEventCopyWithImpl<$Res>
    implements $PlanTabEventCopyWith<$Res> {
  _$PlanTabEventCopyWithImpl(this._self, this._then);

  final PlanTabEvent _self;
  final $Res Function(PlanTabEvent) _then;

/// Create a copy of PlanTabEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlanTabEvent].
extension PlanTabEventPatterns on PlanTabEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PlanTabToastMessage value)?  toastMessage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlanTabToastMessage() when toastMessage != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PlanTabToastMessage value)  toastMessage,}){
final _that = this;
switch (_that) {
case _PlanTabToastMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PlanTabToastMessage value)?  toastMessage,}){
final _that = this;
switch (_that) {
case _PlanTabToastMessage() when toastMessage != null:
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
case _PlanTabToastMessage() when toastMessage != null:
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
case _PlanTabToastMessage():
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
case _PlanTabToastMessage() when toastMessage != null:
return toastMessage(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _PlanTabToastMessage with DiagnosticableTreeMixin implements PlanTabEvent {
  const _PlanTabToastMessage(this.message);
  

@override final  String message;

/// Create a copy of PlanTabEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanTabToastMessageCopyWith<_PlanTabToastMessage> get copyWith => __$PlanTabToastMessageCopyWithImpl<_PlanTabToastMessage>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PlanTabEvent.toastMessage'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlanTabToastMessage&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PlanTabEvent.toastMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class _$PlanTabToastMessageCopyWith<$Res> implements $PlanTabEventCopyWith<$Res> {
  factory _$PlanTabToastMessageCopyWith(_PlanTabToastMessage value, $Res Function(_PlanTabToastMessage) _then) = __$PlanTabToastMessageCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$PlanTabToastMessageCopyWithImpl<$Res>
    implements _$PlanTabToastMessageCopyWith<$Res> {
  __$PlanTabToastMessageCopyWithImpl(this._self, this._then);

  final _PlanTabToastMessage _self;
  final $Res Function(_PlanTabToastMessage) _then;

/// Create a copy of PlanTabEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_PlanTabToastMessage(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
