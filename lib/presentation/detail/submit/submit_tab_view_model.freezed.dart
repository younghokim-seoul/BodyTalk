// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_tab_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitTabEvent {

 String get message;
/// Create a copy of SubmitTabEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitTabEventCopyWith<SubmitTabEvent> get copyWith => _$SubmitTabEventCopyWithImpl<SubmitTabEvent>(this as SubmitTabEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitTabEvent&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubmitTabEvent(message: $message)';
}


}

/// @nodoc
abstract mixin class $SubmitTabEventCopyWith<$Res>  {
  factory $SubmitTabEventCopyWith(SubmitTabEvent value, $Res Function(SubmitTabEvent) _then) = _$SubmitTabEventCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SubmitTabEventCopyWithImpl<$Res>
    implements $SubmitTabEventCopyWith<$Res> {
  _$SubmitTabEventCopyWithImpl(this._self, this._then);

  final SubmitTabEvent _self;
  final $Res Function(SubmitTabEvent) _then;

/// Create a copy of SubmitTabEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitTabEvent].
extension SubmitTabEventPatterns on SubmitTabEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SubmitTabToastMessage value)?  toastMessage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitTabToastMessage() when toastMessage != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SubmitTabToastMessage value)  toastMessage,}){
final _that = this;
switch (_that) {
case _SubmitTabToastMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SubmitTabToastMessage value)?  toastMessage,}){
final _that = this;
switch (_that) {
case _SubmitTabToastMessage() when toastMessage != null:
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
case _SubmitTabToastMessage() when toastMessage != null:
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
case _SubmitTabToastMessage():
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
case _SubmitTabToastMessage() when toastMessage != null:
return toastMessage(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitTabToastMessage implements SubmitTabEvent {
  const _SubmitTabToastMessage(this.message);
  

@override final  String message;

/// Create a copy of SubmitTabEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitTabToastMessageCopyWith<_SubmitTabToastMessage> get copyWith => __$SubmitTabToastMessageCopyWithImpl<_SubmitTabToastMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitTabToastMessage&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubmitTabEvent.toastMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SubmitTabToastMessageCopyWith<$Res> implements $SubmitTabEventCopyWith<$Res> {
  factory _$SubmitTabToastMessageCopyWith(_SubmitTabToastMessage value, $Res Function(_SubmitTabToastMessage) _then) = __$SubmitTabToastMessageCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SubmitTabToastMessageCopyWithImpl<$Res>
    implements _$SubmitTabToastMessageCopyWith<$Res> {
  __$SubmitTabToastMessageCopyWithImpl(this._self, this._then);

  final _SubmitTabToastMessage _self;
  final $Res Function(_SubmitTabToastMessage) _then;

/// Create a copy of SubmitTabEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_SubmitTabToastMessage(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
