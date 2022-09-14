// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'perubahan_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PerubahanModalTearOff {
  const _$PerubahanModalTearOff();

  _PerubahanModal call(
      {required String? message,
      required int? statusCode,
      required PerubahanModalData? data}) {
    return _PerubahanModal(
      message: message,
      statusCode: statusCode,
      data: data,
    );
  }
}

/// @nodoc
const $PerubahanModal = _$PerubahanModalTearOff();

/// @nodoc
mixin _$PerubahanModal {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  PerubahanModalData? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PerubahanModalCopyWith<PerubahanModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerubahanModalCopyWith<$Res> {
  factory $PerubahanModalCopyWith(
          PerubahanModal value, $Res Function(PerubahanModal) then) =
      _$PerubahanModalCopyWithImpl<$Res>;
  $Res call({String? message, int? statusCode, PerubahanModalData? data});

  $PerubahanModalDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PerubahanModalCopyWithImpl<$Res>
    implements $PerubahanModalCopyWith<$Res> {
  _$PerubahanModalCopyWithImpl(this._value, this._then);

  final PerubahanModal _value;
  // ignore: unused_field
  final $Res Function(PerubahanModal) _then;

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
              as PerubahanModalData?,
    ));
  }

  @override
  $PerubahanModalDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PerubahanModalDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$PerubahanModalCopyWith<$Res>
    implements $PerubahanModalCopyWith<$Res> {
  factory _$PerubahanModalCopyWith(
          _PerubahanModal value, $Res Function(_PerubahanModal) then) =
      __$PerubahanModalCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int? statusCode, PerubahanModalData? data});

  @override
  $PerubahanModalDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$PerubahanModalCopyWithImpl<$Res>
    extends _$PerubahanModalCopyWithImpl<$Res>
    implements _$PerubahanModalCopyWith<$Res> {
  __$PerubahanModalCopyWithImpl(
      _PerubahanModal _value, $Res Function(_PerubahanModal) _then)
      : super(_value, (v) => _then(v as _PerubahanModal));

  @override
  _PerubahanModal get _value => super._value as _PerubahanModal;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_PerubahanModal(
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
              as PerubahanModalData?,
    ));
  }
}

/// @nodoc

class _$_PerubahanModal implements _PerubahanModal {
  const _$_PerubahanModal(
      {required this.message, required this.statusCode, required this.data});

  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final PerubahanModalData? data;

  @override
  String toString() {
    return 'PerubahanModal(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PerubahanModal &&
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
  _$PerubahanModalCopyWith<_PerubahanModal> get copyWith =>
      __$PerubahanModalCopyWithImpl<_PerubahanModal>(this, _$identity);
}

abstract class _PerubahanModal implements PerubahanModal {
  const factory _PerubahanModal(
      {required String? message,
      required int? statusCode,
      required PerubahanModalData? data}) = _$_PerubahanModal;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  PerubahanModalData? get data;
  @override
  @JsonKey(ignore: true)
  _$PerubahanModalCopyWith<_PerubahanModal> get copyWith =>
      throw _privateConstructorUsedError;
}
