// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) {
  return _ProfileResponse.fromJson(json);
}

/// @nodoc
class _$ProfileResponseTearOff {
  const _$ProfileResponseTearOff();

  _ProfileResponse call({UserResponse? user}) {
    return _ProfileResponse(
      user: user,
    );
  }

  ProfileResponse fromJson(Map<String, Object?> json) {
    return ProfileResponse.fromJson(json);
  }
}

/// @nodoc
const $ProfileResponse = _$ProfileResponseTearOff();

/// @nodoc
mixin _$ProfileResponse {
  UserResponse? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileResponseCopyWith<ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseCopyWith<$Res> {
  factory $ProfileResponseCopyWith(
          ProfileResponse value, $Res Function(ProfileResponse) then) =
      _$ProfileResponseCopyWithImpl<$Res>;
  $Res call({UserResponse? user});

  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._value, this._then);

  final ProfileResponse _value;
  // ignore: unused_field
  final $Res Function(ProfileResponse) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
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
abstract class _$ProfileResponseCopyWith<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  factory _$ProfileResponseCopyWith(
          _ProfileResponse value, $Res Function(_ProfileResponse) then) =
      __$ProfileResponseCopyWithImpl<$Res>;
  @override
  $Res call({UserResponse? user});

  @override
  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$ProfileResponseCopyWithImpl<$Res>
    extends _$ProfileResponseCopyWithImpl<$Res>
    implements _$ProfileResponseCopyWith<$Res> {
  __$ProfileResponseCopyWithImpl(
      _ProfileResponse _value, $Res Function(_ProfileResponse) _then)
      : super(_value, (v) => _then(v as _ProfileResponse));

  @override
  _ProfileResponse get _value => super._value as _ProfileResponse;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_ProfileResponse(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileResponse extends _ProfileResponse {
  const _$_ProfileResponse({this.user}) : super._();

  factory _$_ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileResponseFromJson(json);

  @override
  final UserResponse? user;

  @override
  String toString() {
    return 'ProfileResponse(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileResponse &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$ProfileResponseCopyWith<_ProfileResponse> get copyWith =>
      __$ProfileResponseCopyWithImpl<_ProfileResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileResponseToJson(this);
  }
}

abstract class _ProfileResponse extends ProfileResponse {
  const factory _ProfileResponse({UserResponse? user}) = _$_ProfileResponse;
  const _ProfileResponse._() : super._();

  factory _ProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_ProfileResponse.fromJson;

  @override
  UserResponse? get user;
  @override
  @JsonKey(ignore: true)
  _$ProfileResponseCopyWith<_ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
