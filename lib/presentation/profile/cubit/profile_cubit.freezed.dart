// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _ProfileState call(
      {ResultState<dynamic> logoutResultState = const ResultState.initial(),
      ResultState<dynamic> getProfileResultState = const ResultState.initial(),
      User user = const User()}) {
    return _ProfileState(
      logoutResultState: logoutResultState,
      getProfileResultState: getProfileResultState,
      user: user,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  ResultState<dynamic> get logoutResultState =>
      throw _privateConstructorUsedError;
  ResultState<dynamic> get getProfileResultState =>
      throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {ResultState<dynamic> logoutResultState,
      ResultState<dynamic> getProfileResultState,
      User user});

  $ResultStateCopyWith<dynamic, $Res> get logoutResultState;
  $ResultStateCopyWith<dynamic, $Res> get getProfileResultState;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? logoutResultState = freezed,
    Object? getProfileResultState = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      logoutResultState: logoutResultState == freezed
          ? _value.logoutResultState
          : logoutResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      getProfileResultState: getProfileResultState == freezed
          ? _value.getProfileResultState
          : getProfileResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $ResultStateCopyWith<dynamic, $Res> get logoutResultState {
    return $ResultStateCopyWith<dynamic, $Res>(_value.logoutResultState,
        (value) {
      return _then(_value.copyWith(logoutResultState: value));
    });
  }

  @override
  $ResultStateCopyWith<dynamic, $Res> get getProfileResultState {
    return $ResultStateCopyWith<dynamic, $Res>(_value.getProfileResultState,
        (value) {
      return _then(_value.copyWith(getProfileResultState: value));
    });
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResultState<dynamic> logoutResultState,
      ResultState<dynamic> getProfileResultState,
      User user});

  @override
  $ResultStateCopyWith<dynamic, $Res> get logoutResultState;
  @override
  $ResultStateCopyWith<dynamic, $Res> get getProfileResultState;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object? logoutResultState = freezed,
    Object? getProfileResultState = freezed,
    Object? user = freezed,
  }) {
    return _then(_ProfileState(
      logoutResultState: logoutResultState == freezed
          ? _value.logoutResultState
          : logoutResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      getProfileResultState: getProfileResultState == freezed
          ? _value.getProfileResultState
          : getProfileResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {this.logoutResultState = const ResultState.initial(),
      this.getProfileResultState = const ResultState.initial(),
      this.user = const User()});

  @JsonKey()
  @override
  final ResultState<dynamic> logoutResultState;
  @JsonKey()
  @override
  final ResultState<dynamic> getProfileResultState;
  @JsonKey()
  @override
  final User user;

  @override
  String toString() {
    return 'ProfileState(logoutResultState: $logoutResultState, getProfileResultState: $getProfileResultState, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            const DeepCollectionEquality()
                .equals(other.logoutResultState, logoutResultState) &&
            const DeepCollectionEquality()
                .equals(other.getProfileResultState, getProfileResultState) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(logoutResultState),
      const DeepCollectionEquality().hash(getProfileResultState),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {ResultState<dynamic> logoutResultState,
      ResultState<dynamic> getProfileResultState,
      User user}) = _$_ProfileState;

  @override
  ResultState<dynamic> get logoutResultState;
  @override
  ResultState<dynamic> get getProfileResultState;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
