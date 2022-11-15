// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryDetailResponse _$HistoryDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _HistoryDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$HistoryDetailResponse {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  HistoryDetailDataResponse get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryDetailResponseCopyWith<HistoryDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryDetailResponseCopyWith<$Res> {
  factory $HistoryDetailResponseCopyWith(HistoryDetailResponse value,
          $Res Function(HistoryDetailResponse) then) =
      _$HistoryDetailResponseCopyWithImpl<$Res>;
  $Res call({String? message, int? statusCode, HistoryDetailDataResponse data});

  $HistoryDetailDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$HistoryDetailResponseCopyWithImpl<$Res>
    implements $HistoryDetailResponseCopyWith<$Res> {
  _$HistoryDetailResponseCopyWithImpl(this._value, this._then);

  final HistoryDetailResponse _value;
  // ignore: unused_field
  final $Res Function(HistoryDetailResponse) _then;

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
              as HistoryDetailDataResponse,
    ));
  }

  @override
  $HistoryDetailDataResponseCopyWith<$Res> get data {
    return $HistoryDetailDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_HistoryDetailResponseCopyWith<$Res>
    implements $HistoryDetailResponseCopyWith<$Res> {
  factory _$$_HistoryDetailResponseCopyWith(_$_HistoryDetailResponse value,
          $Res Function(_$_HistoryDetailResponse) then) =
      __$$_HistoryDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int? statusCode, HistoryDetailDataResponse data});

  @override
  $HistoryDetailDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$_HistoryDetailResponseCopyWithImpl<$Res>
    extends _$HistoryDetailResponseCopyWithImpl<$Res>
    implements _$$_HistoryDetailResponseCopyWith<$Res> {
  __$$_HistoryDetailResponseCopyWithImpl(_$_HistoryDetailResponse _value,
      $Res Function(_$_HistoryDetailResponse) _then)
      : super(_value, (v) => _then(v as _$_HistoryDetailResponse));

  @override
  _$_HistoryDetailResponse get _value =>
      super._value as _$_HistoryDetailResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_HistoryDetailResponse(
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
              as HistoryDetailDataResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HistoryDetailResponse extends _HistoryDetailResponse {
  const _$_HistoryDetailResponse(
      {required this.message, required this.statusCode, required this.data})
      : super._();

  factory _$_HistoryDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryDetailResponseFromJson(json);

  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final HistoryDetailDataResponse data;

  @override
  String toString() {
    return 'HistoryDetailResponse(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryDetailResponse &&
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
  _$$_HistoryDetailResponseCopyWith<_$_HistoryDetailResponse> get copyWith =>
      __$$_HistoryDetailResponseCopyWithImpl<_$_HistoryDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryDetailResponseToJson(
      this,
    );
  }
}

abstract class _HistoryDetailResponse extends HistoryDetailResponse {
  const factory _HistoryDetailResponse(
          {required final String? message,
          required final int? statusCode,
          required final HistoryDetailDataResponse data}) =
      _$_HistoryDetailResponse;
  const _HistoryDetailResponse._() : super._();

  factory _HistoryDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_HistoryDetailResponse.fromJson;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  HistoryDetailDataResponse get data;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryDetailResponseCopyWith<_$_HistoryDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
