// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'validate_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ValidateDataResponse _$ValidateDataResponseFromJson(Map<String, dynamic> json) {
  return _ValidateDataResponse.fromJson(json);
}

/// @nodoc
mixin _$ValidateDataResponse {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  ValidDataResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateDataResponseCopyWith<ValidateDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateDataResponseCopyWith<$Res> {
  factory $ValidateDataResponseCopyWith(ValidateDataResponse value,
          $Res Function(ValidateDataResponse) then) =
      _$ValidateDataResponseCopyWithImpl<$Res>;
  $Res call({String? message, int? statusCode, ValidDataResponse? data});

  $ValidDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$ValidateDataResponseCopyWithImpl<$Res>
    implements $ValidateDataResponseCopyWith<$Res> {
  _$ValidateDataResponseCopyWithImpl(this._value, this._then);

  final ValidateDataResponse _value;
  // ignore: unused_field
  final $Res Function(ValidateDataResponse) _then;

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
              as ValidDataResponse?,
    ));
  }

  @override
  $ValidDataResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ValidDataResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_ValidateDataResponseCopyWith<$Res>
    implements $ValidateDataResponseCopyWith<$Res> {
  factory _$$_ValidateDataResponseCopyWith(_$_ValidateDataResponse value,
          $Res Function(_$_ValidateDataResponse) then) =
      __$$_ValidateDataResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int? statusCode, ValidDataResponse? data});

  @override
  $ValidDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ValidateDataResponseCopyWithImpl<$Res>
    extends _$ValidateDataResponseCopyWithImpl<$Res>
    implements _$$_ValidateDataResponseCopyWith<$Res> {
  __$$_ValidateDataResponseCopyWithImpl(_$_ValidateDataResponse _value,
      $Res Function(_$_ValidateDataResponse) _then)
      : super(_value, (v) => _then(v as _$_ValidateDataResponse));

  @override
  _$_ValidateDataResponse get _value => super._value as _$_ValidateDataResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ValidateDataResponse(
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
              as ValidDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ValidateDataResponse extends _ValidateDataResponse {
  const _$_ValidateDataResponse(
      {required this.message, required this.statusCode, required this.data})
      : super._();

  factory _$_ValidateDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ValidateDataResponseFromJson(json);

  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final ValidDataResponse? data;

  @override
  String toString() {
    return 'ValidateDataResponse(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateDataResponse &&
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
  _$$_ValidateDataResponseCopyWith<_$_ValidateDataResponse> get copyWith =>
      __$$_ValidateDataResponseCopyWithImpl<_$_ValidateDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ValidateDataResponseToJson(
      this,
    );
  }
}

abstract class _ValidateDataResponse extends ValidateDataResponse {
  const factory _ValidateDataResponse(
      {required final String? message,
      required final int? statusCode,
      required final ValidDataResponse? data}) = _$_ValidateDataResponse;
  const _ValidateDataResponse._() : super._();

  factory _ValidateDataResponse.fromJson(Map<String, dynamic> json) =
      _$_ValidateDataResponse.fromJson;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  ValidDataResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ValidateDataResponseCopyWith<_$_ValidateDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
