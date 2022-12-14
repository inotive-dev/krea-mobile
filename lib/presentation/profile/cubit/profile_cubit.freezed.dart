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
      ResultState<dynamic> updateProfileResultState =
          const ResultState.initial(),
      User? user = const User(),
      String name = '',
      String email = '',
      String phoneNumber = '',
      String password = '',
      File? pickedImageFile}) {
    return _ProfileState(
      logoutResultState: logoutResultState,
      getProfileResultState: getProfileResultState,
      updateProfileResultState: updateProfileResultState,
      user: user,
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      password: password,
      pickedImageFile: pickedImageFile,
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
  ResultState<dynamic> get updateProfileResultState =>
      throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  File? get pickedImageFile => throw _privateConstructorUsedError;

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
      ResultState<dynamic> updateProfileResultState,
      User? user,
      String name,
      String email,
      String phoneNumber,
      String password,
      File? pickedImageFile});

  $ResultStateCopyWith<dynamic, $Res> get logoutResultState;
  $ResultStateCopyWith<dynamic, $Res> get getProfileResultState;
  $ResultStateCopyWith<dynamic, $Res> get updateProfileResultState;
  $UserCopyWith<$Res>? get user;
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
    Object? updateProfileResultState = freezed,
    Object? user = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? pickedImageFile = freezed,
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
      updateProfileResultState: updateProfileResultState == freezed
          ? _value.updateProfileResultState
          : updateProfileResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      pickedImageFile: pickedImageFile == freezed
          ? _value.pickedImageFile
          : pickedImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
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
  $ResultStateCopyWith<dynamic, $Res> get updateProfileResultState {
    return $ResultStateCopyWith<dynamic, $Res>(_value.updateProfileResultState,
        (value) {
      return _then(_value.copyWith(updateProfileResultState: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
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
      ResultState<dynamic> updateProfileResultState,
      User? user,
      String name,
      String email,
      String phoneNumber,
      String password,
      File? pickedImageFile});

  @override
  $ResultStateCopyWith<dynamic, $Res> get logoutResultState;
  @override
  $ResultStateCopyWith<dynamic, $Res> get getProfileResultState;
  @override
  $ResultStateCopyWith<dynamic, $Res> get updateProfileResultState;
  @override
  $UserCopyWith<$Res>? get user;
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
    Object? updateProfileResultState = freezed,
    Object? user = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? pickedImageFile = freezed,
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
      updateProfileResultState: updateProfileResultState == freezed
          ? _value.updateProfileResultState
          : updateProfileResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      pickedImageFile: pickedImageFile == freezed
          ? _value.pickedImageFile
          : pickedImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {this.logoutResultState = const ResultState.initial(),
      this.getProfileResultState = const ResultState.initial(),
      this.updateProfileResultState = const ResultState.initial(),
      this.user = const User(),
      this.name = '',
      this.email = '',
      this.phoneNumber = '',
      this.password = '',
      this.pickedImageFile});

  @JsonKey()
  @override
  final ResultState<dynamic> logoutResultState;
  @JsonKey()
  @override
  final ResultState<dynamic> getProfileResultState;
  @JsonKey()
  @override
  final ResultState<dynamic> updateProfileResultState;
  @JsonKey()
  @override
  final User? user;
  @JsonKey()
  @override
  final String name;
  @JsonKey()
  @override
  final String email;
  @JsonKey()
  @override
  final String phoneNumber;
  @JsonKey()
  @override
  final String password;
  @override
  final File? pickedImageFile;

  @override
  String toString() {
    return 'ProfileState(logoutResultState: $logoutResultState, getProfileResultState: $getProfileResultState, updateProfileResultState: $updateProfileResultState, user: $user, name: $name, email: $email, phoneNumber: $phoneNumber, password: $password, pickedImageFile: $pickedImageFile)';
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
            const DeepCollectionEquality().equals(
                other.updateProfileResultState, updateProfileResultState) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.pickedImageFile, pickedImageFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(logoutResultState),
      const DeepCollectionEquality().hash(getProfileResultState),
      const DeepCollectionEquality().hash(updateProfileResultState),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(pickedImageFile));

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {ResultState<dynamic> logoutResultState,
      ResultState<dynamic> getProfileResultState,
      ResultState<dynamic> updateProfileResultState,
      User? user,
      String name,
      String email,
      String phoneNumber,
      String password,
      File? pickedImageFile}) = _$_ProfileState;

  @override
  ResultState<dynamic> get logoutResultState;
  @override
  ResultState<dynamic> get getProfileResultState;
  @override
  ResultState<dynamic> get updateProfileResultState;
  @override
  User? get user;
  @override
  String get name;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  File? get pickedImageFile;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
