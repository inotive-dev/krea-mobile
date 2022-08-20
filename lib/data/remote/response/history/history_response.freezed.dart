// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryResponse _$HistoryResponseFromJson(Map<String, dynamic> json) {
  return _HistoryResponse.fromJson(json);
}

/// @nodoc
class _$HistoryResponseTearOff {
  const _$HistoryResponseTearOff();

  _HistoryResponse call(
      {required String? message,
      required int? statusCode,
      required HistoryDataResponse? data}) {
    return _HistoryResponse(
      message: message,
      statusCode: statusCode,
      data: data,
    );
  }

  HistoryResponse fromJson(Map<String, Object?> json) {
    return HistoryResponse.fromJson(json);
  }
}

/// @nodoc
const $HistoryResponse = _$HistoryResponseTearOff();

/// @nodoc
mixin _$HistoryResponse {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  HistoryDataResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryResponseCopyWith<HistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryResponseCopyWith<$Res> {
  factory $HistoryResponseCopyWith(
          HistoryResponse value, $Res Function(HistoryResponse) then) =
      _$HistoryResponseCopyWithImpl<$Res>;
  $Res call({String? message, int? statusCode, HistoryDataResponse? data});

  $HistoryDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$HistoryResponseCopyWithImpl<$Res>
    implements $HistoryResponseCopyWith<$Res> {
  _$HistoryResponseCopyWithImpl(this._value, this._then);

  final HistoryResponse _value;
  // ignore: unused_field
  final $Res Function(HistoryResponse) _then;

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
              as HistoryDataResponse?,
    ));
  }

  @override
  $HistoryDataResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HistoryDataResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$HistoryResponseCopyWith<$Res>
    implements $HistoryResponseCopyWith<$Res> {
  factory _$HistoryResponseCopyWith(
          _HistoryResponse value, $Res Function(_HistoryResponse) then) =
      __$HistoryResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int? statusCode, HistoryDataResponse? data});

  @override
  $HistoryDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$HistoryResponseCopyWithImpl<$Res>
    extends _$HistoryResponseCopyWithImpl<$Res>
    implements _$HistoryResponseCopyWith<$Res> {
  __$HistoryResponseCopyWithImpl(
      _HistoryResponse _value, $Res Function(_HistoryResponse) _then)
      : super(_value, (v) => _then(v as _HistoryResponse));

  @override
  _HistoryResponse get _value => super._value as _HistoryResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_HistoryResponse(
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
              as HistoryDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HistoryResponse extends _HistoryResponse {
  const _$_HistoryResponse(
      {required this.message, required this.statusCode, required this.data})
      : super._();

  factory _$_HistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryResponseFromJson(json);

  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final HistoryDataResponse? data;

  @override
  String toString() {
    return 'HistoryResponse(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryResponse &&
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
  _$HistoryResponseCopyWith<_HistoryResponse> get copyWith =>
      __$HistoryResponseCopyWithImpl<_HistoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryResponseToJson(this);
  }
}

abstract class _HistoryResponse extends HistoryResponse {
  const factory _HistoryResponse(
      {required String? message,
      required int? statusCode,
      required HistoryDataResponse? data}) = _$_HistoryResponse;
  const _HistoryResponse._() : super._();

  factory _HistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_HistoryResponse.fromJson;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  HistoryDataResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$HistoryResponseCopyWith<_HistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
