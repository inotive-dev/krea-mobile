// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateProfileResponse _$UpdateProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdateProfileResponse.fromJson(json);
}

/// @nodoc
class _$UpdateProfileResponseTearOff {
  const _$UpdateProfileResponseTearOff();

  _UpdateProfileResponse call({UserResponse? user, String? message}) {
    return _UpdateProfileResponse(
      user: user,
      message: message,
    );
  }

  UpdateProfileResponse fromJson(Map<String, Object?> json) {
    return UpdateProfileResponse.fromJson(json);
  }
}

/// @nodoc
const $UpdateProfileResponse = _$UpdateProfileResponseTearOff();

/// @nodoc
mixin _$UpdateProfileResponse {
  UserResponse? get user => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileResponseCopyWith<UpdateProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileResponseCopyWith<$Res> {
  factory $UpdateProfileResponseCopyWith(UpdateProfileResponse value,
          $Res Function(UpdateProfileResponse) then) =
      _$UpdateProfileResponseCopyWithImpl<$Res>;
  $Res call({UserResponse? user, String? message});

  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$UpdateProfileResponseCopyWithImpl<$Res>
    implements $UpdateProfileResponseCopyWith<$Res> {
  _$UpdateProfileResponseCopyWithImpl(this._value, this._then);

  final UpdateProfileResponse _value;
  // ignore: unused_field
  final $Res Function(UpdateProfileResponse) _then;

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
abstract class _$UpdateProfileResponseCopyWith<$Res>
    implements $UpdateProfileResponseCopyWith<$Res> {
  factory _$UpdateProfileResponseCopyWith(_UpdateProfileResponse value,
          $Res Function(_UpdateProfileResponse) then) =
      __$UpdateProfileResponseCopyWithImpl<$Res>;
  @override
  $Res call({UserResponse? user, String? message});

  @override
  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$UpdateProfileResponseCopyWithImpl<$Res>
    extends _$UpdateProfileResponseCopyWithImpl<$Res>
    implements _$UpdateProfileResponseCopyWith<$Res> {
  __$UpdateProfileResponseCopyWithImpl(_UpdateProfileResponse _value,
      $Res Function(_UpdateProfileResponse) _then)
      : super(_value, (v) => _then(v as _UpdateProfileResponse));

  @override
  _UpdateProfileResponse get _value => super._value as _UpdateProfileResponse;

  @override
  $Res call({
    Object? user = freezed,
    Object? message = freezed,
  }) {
    return _then(_UpdateProfileResponse(
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
@JsonSerializable()
class _$_UpdateProfileResponse extends _UpdateProfileResponse {
  const _$_UpdateProfileResponse({this.user, this.message}) : super._();

  factory _$_UpdateProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateProfileResponseFromJson(json);

  @override
  final UserResponse? user;
  @override
  final String? message;

  @override
  String toString() {
    return 'UpdateProfileResponse(user: $user, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProfileResponse &&
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
  _$UpdateProfileResponseCopyWith<_UpdateProfileResponse> get copyWith =>
      __$UpdateProfileResponseCopyWithImpl<_UpdateProfileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateProfileResponseToJson(this);
  }
}

abstract class _UpdateProfileResponse extends UpdateProfileResponse {
  const factory _UpdateProfileResponse({UserResponse? user, String? message}) =
      _$_UpdateProfileResponse;
  const _UpdateProfileResponse._() : super._();

  factory _UpdateProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateProfileResponse.fromJson;

  @override
  UserResponse? get user;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$UpdateProfileResponseCopyWith<_UpdateProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
