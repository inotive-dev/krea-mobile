// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_reports.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SalesReportsTearOff {
  const _$SalesReportsTearOff();

  _SalesReports call(
      {required String? message,
      required int? statusCode,
      required SalesReportData? data}) {
    return _SalesReports(
      message: message,
      statusCode: statusCode,
      data: data,
    );
  }
}

/// @nodoc
const $SalesReports = _$SalesReportsTearOff();

/// @nodoc
mixin _$SalesReports {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  SalesReportData? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesReportsCopyWith<SalesReports> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReportsCopyWith<$Res> {
  factory $SalesReportsCopyWith(
          SalesReports value, $Res Function(SalesReports) then) =
      _$SalesReportsCopyWithImpl<$Res>;
  $Res call({String? message, int? statusCode, SalesReportData? data});

  $SalesReportDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SalesReportsCopyWithImpl<$Res> implements $SalesReportsCopyWith<$Res> {
  _$SalesReportsCopyWithImpl(this._value, this._then);

  final SalesReports _value;
  // ignore: unused_field
  final $Res Function(SalesReports) _then;

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
              as SalesReportData?,
    ));
  }

  @override
  $SalesReportDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SalesReportDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$SalesReportsCopyWith<$Res>
    implements $SalesReportsCopyWith<$Res> {
  factory _$SalesReportsCopyWith(
          _SalesReports value, $Res Function(_SalesReports) then) =
      __$SalesReportsCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int? statusCode, SalesReportData? data});

  @override
  $SalesReportDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$SalesReportsCopyWithImpl<$Res> extends _$SalesReportsCopyWithImpl<$Res>
    implements _$SalesReportsCopyWith<$Res> {
  __$SalesReportsCopyWithImpl(
      _SalesReports _value, $Res Function(_SalesReports) _then)
      : super(_value, (v) => _then(v as _SalesReports));

  @override
  _SalesReports get _value => super._value as _SalesReports;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_SalesReports(
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
              as SalesReportData?,
    ));
  }
}

/// @nodoc

class _$_SalesReports implements _SalesReports {
  const _$_SalesReports(
      {required this.message, required this.statusCode, required this.data});

  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final SalesReportData? data;

  @override
  String toString() {
    return 'SalesReports(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SalesReports &&
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
  _$SalesReportsCopyWith<_SalesReports> get copyWith =>
      __$SalesReportsCopyWithImpl<_SalesReports>(this, _$identity);
}

abstract class _SalesReports implements SalesReports {
  const factory _SalesReports(
      {required String? message,
      required int? statusCode,
      required SalesReportData? data}) = _$_SalesReports;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  SalesReportData? get data;
  @override
  @JsonKey(ignore: true)
  _$SalesReportsCopyWith<_SalesReports> get copyWith =>
      throw _privateConstructorUsedError;
}
