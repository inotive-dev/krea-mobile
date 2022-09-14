// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeUserTearOff {
  const _$HomeUserTearOff();

  _HomeUser call(
      {required String? message,
      required int? statusCode,
      required HomeUserData? data}) {
    return _HomeUser(
      message: message,
      statusCode: statusCode,
      data: data,
    );
  }
}

/// @nodoc
const $HomeUser = _$HomeUserTearOff();

/// @nodoc
mixin _$HomeUser {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  HomeUserData? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeUserCopyWith<HomeUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUserCopyWith<$Res> {
  factory $HomeUserCopyWith(HomeUser value, $Res Function(HomeUser) then) =
      _$HomeUserCopyWithImpl<$Res>;
  $Res call({String? message, int? statusCode, HomeUserData? data});

  $HomeUserDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$HomeUserCopyWithImpl<$Res> implements $HomeUserCopyWith<$Res> {
  _$HomeUserCopyWithImpl(this._value, this._then);

  final HomeUser _value;
  // ignore: unused_field
  final $Res Function(HomeUser) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeUserData?,
    ));
  }

  @override
  $HomeUserDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HomeUserDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$HomeUserCopyWith<$Res> implements $HomeUserCopyWith<$Res> {
  factory _$HomeUserCopyWith(_HomeUser value, $Res Function(_HomeUser) then) =
      __$HomeUserCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int? statusCode, HomeUserData? data});

  @override
  $HomeUserDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$HomeUserCopyWithImpl<$Res> extends _$HomeUserCopyWithImpl<$Res>
    implements _$HomeUserCopyWith<$Res> {
  __$HomeUserCopyWithImpl(_HomeUser _value, $Res Function(_HomeUser) _then)
      : super(_value, (v) => _then(v as _HomeUser));

  @override
  _HomeUser get _value => super._value as _HomeUser;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_HomeUser(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeUserData?,
    ));
  }
}

/// @nodoc

class _$_HomeUser implements _HomeUser {
  const _$_HomeUser(
      {required this.message, required this.statusCode, required this.data});

  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final HomeUserData? data;

  @override
  String toString() {
    return 'HomeUser(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeUser &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$HomeUserCopyWith<_HomeUser> get copyWith =>
      __$HomeUserCopyWithImpl<_HomeUser>(this, _$identity);
}

abstract class _HomeUser implements HomeUser {
  const factory _HomeUser(
      {required String? message,
      required int? statusCode,
      required HomeUserData? data}) = _$_HomeUser;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  HomeUserData? get data;
  @override
  @JsonKey(ignore: true)
  _$HomeUserCopyWith<_HomeUser> get copyWith =>
      throw _privateConstructorUsedError;
}
