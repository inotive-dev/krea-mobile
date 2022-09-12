// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryTearOff {
  const _$HistoryTearOff();

  _History call(
      {required String? message,
      required int? statusCode,
      required HistoryData? data}) {
    return _History(
      message: message,
      statusCode: statusCode,
      data: data,
    );
  }
}

/// @nodoc
const $History = _$HistoryTearOff();

/// @nodoc
mixin _$History {
  String? get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  HistoryData? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryCopyWith<History> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryCopyWith<$Res> {
  factory $HistoryCopyWith(History value, $Res Function(History) then) =
      _$HistoryCopyWithImpl<$Res>;
  $Res call({String? message, int? statusCode, HistoryData? data});

  $HistoryDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$HistoryCopyWithImpl<$Res> implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._value, this._then);

  final History _value;
  // ignore: unused_field
  final $Res Function(History) _then;

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
              as HistoryData?,
    ));
  }

  @override
  $HistoryDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HistoryDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$HistoryCopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory _$HistoryCopyWith(_History value, $Res Function(_History) then) =
      __$HistoryCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int? statusCode, HistoryData? data});

  @override
  $HistoryDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$HistoryCopyWithImpl<$Res> extends _$HistoryCopyWithImpl<$Res>
    implements _$HistoryCopyWith<$Res> {
  __$HistoryCopyWithImpl(_History _value, $Res Function(_History) _then)
      : super(_value, (v) => _then(v as _History));

  @override
  _History get _value => super._value as _History;

  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_History(
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
              as HistoryData?,
    ));
  }
}

/// @nodoc

class _$_History implements _History {
  const _$_History(
      {required this.message, required this.statusCode, required this.data});

  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final HistoryData? data;

  @override
  String toString() {
    return 'History(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _History &&
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
  _$HistoryCopyWith<_History> get copyWith =>
      __$HistoryCopyWithImpl<_History>(this, _$identity);
}

abstract class _History implements History {
  const factory _History(
      {required String? message,
      required int? statusCode,
      required HistoryData? data}) = _$_History;

  @override
  String? get message;
  @override
  int? get statusCode;
  @override
  HistoryData? get data;
  @override
  @JsonKey(ignore: true)
  _$HistoryCopyWith<_History> get copyWith =>
      throw _privateConstructorUsedError;
}
