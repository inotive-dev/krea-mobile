// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'validate_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValidateData {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  ValidData? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidateDataCopyWith<ValidateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateDataCopyWith<$Res> {
  factory $ValidateDataCopyWith(
          ValidateData value, $Res Function(ValidateData) then) =
      _$ValidateDataCopyWithImpl<$Res>;
  $Res call({String? message, int? statusCode, ValidData? data});

  $ValidDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ValidateDataCopyWithImpl<$Res> implements $ValidateDataCopyWith<$Res> {
  _$ValidateDataCopyWithImpl(this._value, this._then);

  final ValidateData _value;
  // ignore: unused_field
  final $Res Function(ValidateData) _then;

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
              as ValidData?,
    ));
  }

  @override
  $ValidDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ValidDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_ValidateDataCopyWith<$Res>
    implements $ValidateDataCopyWith<$Res> {
  factory _$$_ValidateDataCopyWith(
          _$_ValidateData value, $Res Function(_$_ValidateData) then) =
      __$$_ValidateDataCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int? statusCode, ValidData? data});

  @override
  $ValidDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ValidateDataCopyWithImpl<$Res>
    extends _$ValidateDataCopyWithImpl<$Res>
    implements _$$_ValidateDataCopyWith<$Res> {
  __$$_ValidateDataCopyWithImpl(
      _$_ValidateData _value, $Res Function(_$_ValidateData) _then)
      : super(_value, (v) => _then(v as _$_ValidateData));

  @override
  _$_ValidateData get _value => super._value as _$_ValidateData;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ValidateData(
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
              as ValidData?,
    ));
  }
}

/// @nodoc

class _$_ValidateData implements _ValidateData {
  const _$_ValidateData(
      {required this.message, required this.statusCode, required this.data});

  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final ValidData? data;

  @override
  String toString() {
    return 'ValidateData(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateData &&
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
  _$$_ValidateDataCopyWith<_$_ValidateData> get copyWith =>
      __$$_ValidateDataCopyWithImpl<_$_ValidateData>(this, _$identity);
}

abstract class _ValidateData implements ValidateData {
  const factory _ValidateData(
      {required final String? message,
      required final int? statusCode,
      required final ValidData? data}) = _$_ValidateData;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  ValidData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ValidateDataCopyWith<_$_ValidateData> get copyWith =>
      throw _privateConstructorUsedError;
}
