// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoginSuccess value)?  loginSuccess,TResult Function( _LoginToastMessage value)?  toastMessage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case _LoginToastMessage() when toastMessage != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoginSuccess value)  loginSuccess,required TResult Function( _LoginToastMessage value)  toastMessage,}){
final _that = this;
switch (_that) {
case _LoginSuccess():
return loginSuccess(_that);case _LoginToastMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoginSuccess value)?  loginSuccess,TResult? Function( _LoginToastMessage value)?  toastMessage,}){
final _that = this;
switch (_that) {
case _LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case _LoginToastMessage() when toastMessage != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loginSuccess,TResult Function( String message)?  toastMessage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginSuccess() when loginSuccess != null:
return loginSuccess();case _LoginToastMessage() when toastMessage != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loginSuccess,required TResult Function( String message)  toastMessage,}) {final _that = this;
switch (_that) {
case _LoginSuccess():
return loginSuccess();case _LoginToastMessage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loginSuccess,TResult? Function( String message)?  toastMessage,}) {final _that = this;
switch (_that) {
case _LoginSuccess() when loginSuccess != null:
return loginSuccess();case _LoginToastMessage() when toastMessage != null:
return toastMessage(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _LoginSuccess implements LoginEvent {
  const _LoginSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.loginSuccess()';
}


}




/// @nodoc


class _LoginToastMessage implements LoginEvent {
  const _LoginToastMessage(this.message);
  

 final  String message;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginToastMessageCopyWith<_LoginToastMessage> get copyWith => __$LoginToastMessageCopyWithImpl<_LoginToastMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginToastMessage&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginEvent.toastMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class _$LoginToastMessageCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$LoginToastMessageCopyWith(_LoginToastMessage value, $Res Function(_LoginToastMessage) _then) = __$LoginToastMessageCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$LoginToastMessageCopyWithImpl<$Res>
    implements _$LoginToastMessageCopyWith<$Res> {
  __$LoginToastMessageCopyWithImpl(this._self, this._then);

  final _LoginToastMessage _self;
  final $Res Function(_LoginToastMessage) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_LoginToastMessage(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
