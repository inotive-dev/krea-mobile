// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeUserResponse _$HomeUserResponseFromJson(Map<String, dynamic> json) {
  return _HomeUserResponse.fromJson(json);
}

/// @nodoc
class _$HomeUserResponseTearOff {
  const _$HomeUserResponseTearOff();

  _HomeUserResponse call(
      {required String? message,
      required int? statusCode,
      required HomeUserDataResponse? data}) {
    return _HomeUserResponse(
      message: message,
      statusCode: statusCode,
      data: data,
    );
  }

  HomeUserResponse fromJson(Map<String, Object?> json) {
    return HomeUserResponse.fromJson(json);
  }
}

/// @nodoc
const $HomeUserResponse = _$HomeUserResponseTearOff();

/// @nodoc
mixin _$HomeUserResponse {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  HomeUserDataResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeUserResponseCopyWith<HomeUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUserResponseCopyWith<$Res> {
  factory $HomeUserResponseCopyWith(
          HomeUserResponse value, $Res Function(HomeUserResponse) then) =
      _$HomeUserResponseCopyWithImpl<$Res>;
  $Res call({String? message, int? statusCode, HomeUserDataResponse? data});

  $HomeUserDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$HomeUserResponseCopyWithImpl<$Res>
    implements $HomeUserResponseCopyWith<$Res> {
  _$HomeUserResponseCopyWithImpl(this._value, this._then);

  final HomeUserResponse _value;
  // ignore: unused_field
  final $Res Function(HomeUserResponse) _then;

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
              as HomeUserDataResponse?,
    ));
  }

  @override
  $HomeUserDataResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HomeUserDataResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$HomeUserResponseCopyWith<$Res>
    implements $HomeUserResponseCopyWith<$Res> {
  factory _$HomeUserResponseCopyWith(
          _HomeUserResponse value, $Res Function(_HomeUserResponse) then) =
      __$HomeUserResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int? statusCode, HomeUserDataResponse? data});

  @override
  $HomeUserDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$HomeUserResponseCopyWithImpl<$Res>
    extends _$HomeUserResponseCopyWithImpl<$Res>
    implements _$HomeUserResponseCopyWith<$Res> {
  __$HomeUserResponseCopyWithImpl(
      _HomeUserResponse _value, $Res Function(_HomeUserResponse) _then)
      : super(_value, (v) => _then(v as _HomeUserResponse));

  @override
  _HomeUserResponse get _value => super._value as _HomeUserResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_HomeUserResponse(
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
              as HomeUserDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeUserResponse extends _HomeUserResponse {
  const _$_HomeUserResponse(
      {required this.message, required this.statusCode, required this.data})
      : super._();

  factory _$_HomeUserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HomeUserResponseFromJson(json);

  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final HomeUserDataResponse? data;

  @override
  String toString() {
    return 'HomeUserResponse(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeUserResponse &&
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
  _$HomeUserResponseCopyWith<_HomeUserResponse> get copyWith =>
      __$HomeUserResponseCopyWithImpl<_HomeUserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeUserResponseToJson(this);
  }
}

abstract class _HomeUserResponse extends HomeUserResponse {
  const factory _HomeUserResponse(
      {required String? message,
      required int? statusCode,
      required HomeUserDataResponse? data}) = _$_HomeUserResponse;
  const _HomeUserResponse._() : super._();

  factory _HomeUserResponse.fromJson(Map<String, dynamic> json) =
      _$_HomeUserResponse.fromJson;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  HomeUserDataResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$HomeUserResponseCopyWith<_HomeUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
