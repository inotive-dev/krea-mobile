// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryDetailTearOff {
  const _$HistoryDetailTearOff();

  _HistoryDetail call(
      {required String? message,
      required int? statusCode,
      required List<HistoryDetailData>? data}) {
    return _HistoryDetail(
      message: message,
      statusCode: statusCode,
      data: data,
    );
  }
}

/// @nodoc
const $HistoryDetail = _$HistoryDetailTearOff();

/// @nodoc
mixin _$HistoryDetail {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  List<HistoryDetailData>? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryDetailCopyWith<HistoryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryDetailCopyWith<$Res> {
  factory $HistoryDetailCopyWith(
          HistoryDetail value, $Res Function(HistoryDetail) then) =
      _$HistoryDetailCopyWithImpl<$Res>;
  $Res call({String? message, int? statusCode, List<HistoryDetailData>? data});
}

/// @nodoc
class _$HistoryDetailCopyWithImpl<$Res>
    implements $HistoryDetailCopyWith<$Res> {
  _$HistoryDetailCopyWithImpl(this._value, this._then);

  final HistoryDetail _value;
  // ignore: unused_field
  final $Res Function(HistoryDetail) _then;

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
              as List<HistoryDetailData>?,
    ));
  }
}

/// @nodoc
abstract class _$HistoryDetailCopyWith<$Res>
    implements $HistoryDetailCopyWith<$Res> {
  factory _$HistoryDetailCopyWith(
          _HistoryDetail value, $Res Function(_HistoryDetail) then) =
      __$HistoryDetailCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int? statusCode, List<HistoryDetailData>? data});
}

/// @nodoc
class __$HistoryDetailCopyWithImpl<$Res>
    extends _$HistoryDetailCopyWithImpl<$Res>
    implements _$HistoryDetailCopyWith<$Res> {
  __$HistoryDetailCopyWithImpl(
      _HistoryDetail _value, $Res Function(_HistoryDetail) _then)
      : super(_value, (v) => _then(v as _HistoryDetail));

  @override
  _HistoryDetail get _value => super._value as _HistoryDetail;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_HistoryDetail(
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
              as List<HistoryDetailData>?,
    ));
  }
}

/// @nodoc

class _$_HistoryDetail implements _HistoryDetail {
  const _$_HistoryDetail(
      {required this.message, required this.statusCode, required this.data});

  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final List<HistoryDetailData>? data;

  @override
  String toString() {
    return 'HistoryDetail(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryDetail &&
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
  _$HistoryDetailCopyWith<_HistoryDetail> get copyWith =>
      __$HistoryDetailCopyWithImpl<_HistoryDetail>(this, _$identity);
}

abstract class _HistoryDetail implements HistoryDetail {
  const factory _HistoryDetail(
      {required String? message,
      required int? statusCode,
      required List<HistoryDetailData>? data}) = _$_HistoryDetail;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  List<HistoryDetailData>? get data;
  @override
  @JsonKey(ignore: true)
  _$HistoryDetailCopyWith<_HistoryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
