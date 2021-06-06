// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  ConnectedUser connected(User user) {
    return ConnectedUser(
      user,
    );
  }

  _NoUser disconnected() {
    return _NoUser();
  }

  _ErrorUser error(String message) {
    return _ErrorUser(
      message,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectedUser value) connected,
    required TResult Function(_NoUser value) disconnected,
    required TResult Function(_ErrorUser value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectedUser value)? connected,
    TResult Function(_NoUser value)? disconnected,
    TResult Function(_ErrorUser value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class $ConnectedUserCopyWith<$Res> {
  factory $ConnectedUserCopyWith(
          ConnectedUser value, $Res Function(ConnectedUser) then) =
      _$ConnectedUserCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$ConnectedUserCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $ConnectedUserCopyWith<$Res> {
  _$ConnectedUserCopyWithImpl(
      ConnectedUser _value, $Res Function(ConnectedUser) _then)
      : super(_value, (v) => _then(v as ConnectedUser));

  @override
  ConnectedUser get _value => super._value as ConnectedUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(ConnectedUser(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$ConnectedUser implements ConnectedUser {
  _$ConnectedUser(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.connected(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConnectedUser &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $ConnectedUserCopyWith<ConnectedUser> get copyWith =>
      _$ConnectedUserCopyWithImpl<ConnectedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
  }) {
    return connected(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectedUser value) connected,
    required TResult Function(_NoUser value) disconnected,
    required TResult Function(_ErrorUser value) error,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectedUser value)? connected,
    TResult Function(_NoUser value)? disconnected,
    TResult Function(_ErrorUser value)? error,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class ConnectedUser implements UserState {
  factory ConnectedUser(User user) = _$ConnectedUser;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectedUserCopyWith<ConnectedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoUserCopyWith<$Res> {
  factory _$NoUserCopyWith(_NoUser value, $Res Function(_NoUser) then) =
      __$NoUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoUserCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$NoUserCopyWith<$Res> {
  __$NoUserCopyWithImpl(_NoUser _value, $Res Function(_NoUser) _then)
      : super(_value, (v) => _then(v as _NoUser));

  @override
  _NoUser get _value => super._value as _NoUser;
}

/// @nodoc

class _$_NoUser implements _NoUser {
  _$_NoUser();

  @override
  String toString() {
    return 'UserState.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectedUser value) connected,
    required TResult Function(_NoUser value) disconnected,
    required TResult Function(_ErrorUser value) error,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectedUser value)? connected,
    TResult Function(_NoUser value)? disconnected,
    TResult Function(_ErrorUser value)? error,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _NoUser implements UserState {
  factory _NoUser() = _$_NoUser;
}

/// @nodoc
abstract class _$ErrorUserCopyWith<$Res> {
  factory _$ErrorUserCopyWith(
          _ErrorUser value, $Res Function(_ErrorUser) then) =
      __$ErrorUserCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorUserCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$ErrorUserCopyWith<$Res> {
  __$ErrorUserCopyWithImpl(_ErrorUser _value, $Res Function(_ErrorUser) _then)
      : super(_value, (v) => _then(v as _ErrorUser));

  @override
  _ErrorUser get _value => super._value as _ErrorUser;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorUser(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorUser implements _ErrorUser {
  _$_ErrorUser(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorUser &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorUserCopyWith<_ErrorUser> get copyWith =>
      __$ErrorUserCopyWithImpl<_ErrorUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectedUser value) connected,
    required TResult Function(_NoUser value) disconnected,
    required TResult Function(_ErrorUser value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectedUser value)? connected,
    TResult Function(_NoUser value)? disconnected,
    TResult Function(_ErrorUser value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorUser implements UserState {
  factory _ErrorUser(String message) = _$_ErrorUser;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorUserCopyWith<_ErrorUser> get copyWith =>
      throw _privateConstructorUsedError;
}
