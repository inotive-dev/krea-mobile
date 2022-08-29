// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesReportResponse _$SalesReportResponseFromJson(Map<String, dynamic> json) {
  return _SalesReportResponse.fromJson(json);
}

/// @nodoc
class _$SalesReportResponseTearOff {
  const _$SalesReportResponseTearOff();

  _SalesReportResponse call(
      {required String? message,
      required int? statusCode,
      required SalesReportDataResponse? data}) {
    return _SalesReportResponse(
      message: message,
      statusCode: statusCode,
      data: data,
    );
  }

  SalesReportResponse fromJson(Map<String, Object?> json) {
    return SalesReportResponse.fromJson(json);
  }
}

/// @nodoc
const $SalesReportResponse = _$SalesReportResponseTearOff();

/// @nodoc
mixin _$SalesReportResponse {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  SalesReportDataResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesReportResponseCopyWith<SalesReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReportResponseCopyWith<$Res> {
  factory $SalesReportResponseCopyWith(
          SalesReportResponse value, $Res Function(SalesReportResponse) then) =
      _$SalesReportResponseCopyWithImpl<$Res>;
  $Res call({String? message, int? statusCode, SalesReportDataResponse? data});

  $SalesReportDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$SalesReportResponseCopyWithImpl<$Res>
    implements $SalesReportResponseCopyWith<$Res> {
  _$SalesReportResponseCopyWithImpl(this._value, this._then);

  final SalesReportResponse _value;
  // ignore: unused_field
  final $Res Function(SalesReportResponse) _then;

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
              as SalesReportDataResponse?,
    ));
  }

  @override
  $SalesReportDataResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SalesReportDataResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$SalesReportResponseCopyWith<$Res>
    implements $SalesReportResponseCopyWith<$Res> {
  factory _$SalesReportResponseCopyWith(_SalesReportResponse value,
          $Res Function(_SalesReportResponse) then) =
      __$SalesReportResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int? statusCode, SalesReportDataResponse? data});

  @override
  $SalesReportDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$SalesReportResponseCopyWithImpl<$Res>
    extends _$SalesReportResponseCopyWithImpl<$Res>
    implements _$SalesReportResponseCopyWith<$Res> {
  __$SalesReportResponseCopyWithImpl(
      _SalesReportResponse _value, $Res Function(_SalesReportResponse) _then)
      : super(_value, (v) => _then(v as _SalesReportResponse));

  @override
  _SalesReportResponse get _value => super._value as _SalesReportResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_SalesReportResponse(
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
              as SalesReportDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesReportResponse extends _SalesReportResponse {
  const _$_SalesReportResponse(
      {required this.message, required this.statusCode, required this.data})
      : super._();

  factory _$_SalesReportResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SalesReportResponseFromJson(json);

  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final SalesReportDataResponse? data;

  @override
  String toString() {
    return 'SalesReportResponse(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SalesReportResponse &&
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
  _$SalesReportResponseCopyWith<_SalesReportResponse> get copyWith =>
      __$SalesReportResponseCopyWithImpl<_SalesReportResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesReportResponseToJson(this);
  }
}

abstract class _SalesReportResponse extends SalesReportResponse {
  const factory _SalesReportResponse(
      {required String? message,
      required int? statusCode,
      required SalesReportDataResponse? data}) = _$_SalesReportResponse;
  const _SalesReportResponse._() : super._();

  factory _SalesReportResponse.fromJson(Map<String, dynamic> json) =
      _$_SalesReportResponse.fromJson;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  SalesReportDataResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$SalesReportResponseCopyWith<_SalesReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
