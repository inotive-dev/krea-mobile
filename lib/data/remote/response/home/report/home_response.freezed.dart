// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) {
  return _HomeResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeResponse {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  HomeDataResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeResponseCopyWith<HomeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseCopyWith<$Res> {
  factory $HomeResponseCopyWith(
          HomeResponse value, $Res Function(HomeResponse) then) =
      _$HomeResponseCopyWithImpl<$Res>;
  $Res call({String? message, int? statusCode, HomeDataResponse? data});

  $HomeDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$HomeResponseCopyWithImpl<$Res> implements $HomeResponseCopyWith<$Res> {
  _$HomeResponseCopyWithImpl(this._value, this._then);

  final HomeResponse _value;
  // ignore: unused_field
  final $Res Function(HomeResponse) _then;

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
              as HomeDataResponse?,
    ));
  }

  @override
  $HomeDataResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HomeDataResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_HomeResponseCopyWith<$Res>
    implements $HomeResponseCopyWith<$Res> {
  factory _$$_HomeResponseCopyWith(
          _$_HomeResponse value, $Res Function(_$_HomeResponse) then) =
      __$$_HomeResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int? statusCode, HomeDataResponse? data});

  @override
  $HomeDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_HomeResponseCopyWithImpl<$Res>
    extends _$HomeResponseCopyWithImpl<$Res>
    implements _$$_HomeResponseCopyWith<$Res> {
  __$$_HomeResponseCopyWithImpl(
      _$_HomeResponse _value, $Res Function(_$_HomeResponse) _then)
      : super(_value, (v) => _then(v as _$_HomeResponse));

  @override
  _$_HomeResponse get _value => super._value as _$_HomeResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_HomeResponse(
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
              as HomeDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeResponse extends _HomeResponse {
  const _$_HomeResponse(
      {required this.message, required this.statusCode, required this.data})
      : super._();

  factory _$_HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HomeResponseFromJson(json);

  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final HomeDataResponse? data;

  @override
  String toString() {
    return 'HomeResponse(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeResponse &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_HomeResponseCopyWith<_$_HomeResponse> get copyWith =>
      __$$_HomeResponseCopyWithImpl<_$_HomeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeResponseToJson(
      this,
    );
  }
}

abstract class _HomeResponse extends HomeResponse {
  const factory _HomeResponse(
      {required final String? message,
      required final int? statusCode,
      required final HomeDataResponse? data}) = _$_HomeResponse;
  const _HomeResponse._() : super._();

  factory _HomeResponse.fromJson(Map<String, dynamic> json) =
      _$_HomeResponse.fromJson;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  HomeDataResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$$_HomeResponseCopyWith<_$_HomeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
