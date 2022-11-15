// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateProfile {
  UserResponse? get user => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateProfileCopyWith<UpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileCopyWith<$Res> {
  factory $UpdateProfileCopyWith(
          UpdateProfile value, $Res Function(UpdateProfile) then) =
      _$UpdateProfileCopyWithImpl<$Res>;
  $Res call({UserResponse? user, String? message});

  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$UpdateProfileCopyWithImpl<$Res>
    implements $UpdateProfileCopyWith<$Res> {
  _$UpdateProfileCopyWithImpl(this._value, this._then);

  final UpdateProfile _value;
  // ignore: unused_field
  final $Res Function(UpdateProfile) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserResponseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_UpdateProfileCopyWith<$Res>
    implements $UpdateProfileCopyWith<$Res> {
  factory _$$_UpdateProfileCopyWith(
          _$_UpdateProfile value, $Res Function(_$_UpdateProfile) then) =
      __$$_UpdateProfileCopyWithImpl<$Res>;
  @override
  $Res call({UserResponse? user, String? message});

  @override
  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UpdateProfileCopyWithImpl<$Res>
    extends _$UpdateProfileCopyWithImpl<$Res>
    implements _$$_UpdateProfileCopyWith<$Res> {
  __$$_UpdateProfileCopyWithImpl(
      _$_UpdateProfile _value, $Res Function(_$_UpdateProfile) _then)
      : super(_value, (v) => _then(v as _$_UpdateProfile));

  @override
  _$_UpdateProfile get _value => super._value as _$_UpdateProfile;

  @override
  $Res call({
    Object? user = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_UpdateProfile(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UpdateProfile implements _UpdateProfile {
  const _$_UpdateProfile({required this.user, required this.message});

  @override
  final UserResponse? user;
  @override
  final String? message;

  @override
  String toString() {
    return 'UpdateProfile(user: $user, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProfile &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateProfileCopyWith<_$_UpdateProfile> get copyWith =>
      __$$_UpdateProfileCopyWithImpl<_$_UpdateProfile>(this, _$identity);
}

abstract class _UpdateProfile implements UpdateProfile {
  const factory _UpdateProfile(
      {required final UserResponse? user,
      required final String? message}) = _$_UpdateProfile;

  @override
  UserResponse? get user;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateProfileCopyWith<_$_UpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
