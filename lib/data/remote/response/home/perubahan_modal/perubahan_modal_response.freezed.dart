// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'perubahan_modal_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PerubahanModalResponse _$PerubahanModalResponseFromJson(
    Map<String, dynamic> json) {
  return _PerubahanModalResponse.fromJson(json);
}

/// @nodoc
mixin _$PerubahanModalResponse {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  PerubahanModalDataResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerubahanModalResponseCopyWith<PerubahanModalResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerubahanModalResponseCopyWith<$Res> {
  factory $PerubahanModalResponseCopyWith(PerubahanModalResponse value,
          $Res Function(PerubahanModalResponse) then) =
      _$PerubahanModalResponseCopyWithImpl<$Res>;
  $Res call(
      {String? message, int? statusCode, PerubahanModalDataResponse? data});

  $PerubahanModalDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$PerubahanModalResponseCopyWithImpl<$Res>
    implements $PerubahanModalResponseCopyWith<$Res> {
  _$PerubahanModalResponseCopyWithImpl(this._value, this._then);

  final PerubahanModalResponse _value;
  // ignore: unused_field
  final $Res Function(PerubahanModalResponse) _then;

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
              as PerubahanModalDataResponse?,
    ));
  }

  @override
  $PerubahanModalDataResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PerubahanModalDataResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_PerubahanModalResponseCopyWith<$Res>
    implements $PerubahanModalResponseCopyWith<$Res> {
  factory _$$_PerubahanModalResponseCopyWith(_$_PerubahanModalResponse value,
          $Res Function(_$_PerubahanModalResponse) then) =
      __$$_PerubahanModalResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? message, int? statusCode, PerubahanModalDataResponse? data});

  @override
  $PerubahanModalDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_PerubahanModalResponseCopyWithImpl<$Res>
    extends _$PerubahanModalResponseCopyWithImpl<$Res>
    implements _$$_PerubahanModalResponseCopyWith<$Res> {
  __$$_PerubahanModalResponseCopyWithImpl(_$_PerubahanModalResponse _value,
      $Res Function(_$_PerubahanModalResponse) _then)
      : super(_value, (v) => _then(v as _$_PerubahanModalResponse));

  @override
  _$_PerubahanModalResponse get _value =>
      super._value as _$_PerubahanModalResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_PerubahanModalResponse(
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
              as PerubahanModalDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PerubahanModalResponse extends _PerubahanModalResponse {
  const _$_PerubahanModalResponse(
      {required this.message, required this.statusCode, required this.data})
      : super._();

  factory _$_PerubahanModalResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PerubahanModalResponseFromJson(json);

  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final PerubahanModalDataResponse? data;

  @override
  String toString() {
    return 'PerubahanModalResponse(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PerubahanModalResponse &&
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
  _$$_PerubahanModalResponseCopyWith<_$_PerubahanModalResponse> get copyWith =>
      __$$_PerubahanModalResponseCopyWithImpl<_$_PerubahanModalResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PerubahanModalResponseToJson(
      this,
    );
  }
}

abstract class _PerubahanModalResponse extends PerubahanModalResponse {
  const factory _PerubahanModalResponse(
          {required final String? message,
          required final int? statusCode,
          required final PerubahanModalDataResponse? data}) =
      _$_PerubahanModalResponse;
  const _PerubahanModalResponse._() : super._();

  factory _PerubahanModalResponse.fromJson(Map<String, dynamic> json) =
      _$_PerubahanModalResponse.fromJson;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  PerubahanModalDataResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$$_PerubahanModalResponseCopyWith<_$_PerubahanModalResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
