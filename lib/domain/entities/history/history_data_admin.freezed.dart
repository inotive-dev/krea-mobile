// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_data_admin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryDataTearOff {
  const _$HistoryDataTearOff();

  _HistoryData call(
      {required List<SalesReport>? thisWeekHistory,
      required List<SalesReport>? lastMonthHistory}) {
    return _HistoryData(
      thisWeekHistory: thisWeekHistory,
      lastMonthHistory: lastMonthHistory,
    );
  }
}

/// @nodoc
const $HistoryData = _$HistoryDataTearOff();

/// @nodoc
mixin _$HistoryData {
  List<SalesReport>? get thisWeekHistory => throw _privateConstructorUsedError;
  List<SalesReport>? get lastMonthHistory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryDataCopyWith<HistoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryDataCopyWith<$Res> {
  factory $HistoryDataCopyWith(
          HistoryData value, $Res Function(HistoryData) then) =
      _$HistoryDataCopyWithImpl<$Res>;
  $Res call(
      {List<SalesReport>? thisWeekHistory,
      List<SalesReport>? lastMonthHistory});
}

/// @nodoc
class _$HistoryDataCopyWithImpl<$Res> implements $HistoryDataCopyWith<$Res> {
  _$HistoryDataCopyWithImpl(this._value, this._then);

  final HistoryData _value;
  // ignore: unused_field
  final $Res Function(HistoryData) _then;

  @override
  $Res call({
    Object? thisWeekHistory = freezed,
    Object? lastMonthHistory = freezed,
  }) {
    return _then(_value.copyWith(
      thisWeekHistory: thisWeekHistory == freezed
          ? _value.thisWeekHistory
          : thisWeekHistory // ignore: cast_nullable_to_non_nullable
              as List<SalesReport>?,
      lastMonthHistory: lastMonthHistory == freezed
          ? _value.lastMonthHistory
          : lastMonthHistory // ignore: cast_nullable_to_non_nullable
              as List<SalesReport>?,
    ));
  }
}

/// @nodoc
abstract class _$HistoryDataCopyWith<$Res>
    implements $HistoryDataCopyWith<$Res> {
  factory _$HistoryDataCopyWith(
          _HistoryData value, $Res Function(_HistoryData) then) =
      __$HistoryDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SalesReport>? thisWeekHistory,
      List<SalesReport>? lastMonthHistory});
}

/// @nodoc
class __$HistoryDataCopyWithImpl<$Res> extends _$HistoryDataCopyWithImpl<$Res>
    implements _$HistoryDataCopyWith<$Res> {
  __$HistoryDataCopyWithImpl(
      _HistoryData _value, $Res Function(_HistoryData) _then)
      : super(_value, (v) => _then(v as _HistoryData));

  @override
  _HistoryData get _value => super._value as _HistoryData;

  @override
  $Res call({
    Object? thisWeekHistory = freezed,
    Object? lastMonthHistory = freezed,
  }) {
    return _then(_HistoryData(
      thisWeekHistory: thisWeekHistory == freezed
          ? _value.thisWeekHistory
          : thisWeekHistory // ignore: cast_nullable_to_non_nullable
              as List<SalesReport>?,
      lastMonthHistory: lastMonthHistory == freezed
          ? _value.lastMonthHistory
          : lastMonthHistory // ignore: cast_nullable_to_non_nullable
              as List<SalesReport>?,
    ));
  }
}

/// @nodoc

class _$_HistoryData implements _HistoryData {
  const _$_HistoryData(
      {required this.thisWeekHistory, required this.lastMonthHistory});

  @override
  final List<SalesReport>? thisWeekHistory;
  @override
  final List<SalesReport>? lastMonthHistory;

  @override
  String toString() {
    return 'HistoryData(thisWeekHistory: $thisWeekHistory, lastMonthHistory: $lastMonthHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryData &&
            const DeepCollectionEquality()
                .equals(other.thisWeekHistory, thisWeekHistory) &&
            const DeepCollectionEquality()
                .equals(other.lastMonthHistory, lastMonthHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(thisWeekHistory),
      const DeepCollectionEquality().hash(lastMonthHistory));

  @JsonKey(ignore: true)
  @override
  _$HistoryDataCopyWith<_HistoryData> get copyWith =>
      __$HistoryDataCopyWithImpl<_HistoryData>(this, _$identity);
}

abstract class _HistoryData implements HistoryData {
  const factory _HistoryData(
      {required List<SalesReport>? thisWeekHistory,
      required List<SalesReport>? lastMonthHistory}) = _$_HistoryData;

  @override
  List<SalesReport>? get thisWeekHistory;
  @override
  List<SalesReport>? get lastMonthHistory;
  @override
  @JsonKey(ignore: true)
  _$HistoryDataCopyWith<_HistoryData> get copyWith =>
      throw _privateConstructorUsedError;
}
