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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryData {
  List<SalesResponse>? get thisWeekHistory =>
      throw _privateConstructorUsedError;
  List<SalesResponse>? get lastMonthHistory =>
      throw _privateConstructorUsedError;

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
      {List<SalesResponse>? thisWeekHistory,
      List<SalesResponse>? lastMonthHistory});
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
              as List<SalesResponse>?,
      lastMonthHistory: lastMonthHistory == freezed
          ? _value.lastMonthHistory
          : lastMonthHistory // ignore: cast_nullable_to_non_nullable
              as List<SalesResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$$_HistoryDataCopyWith<$Res>
    implements $HistoryDataCopyWith<$Res> {
  factory _$$_HistoryDataCopyWith(
          _$_HistoryData value, $Res Function(_$_HistoryData) then) =
      __$$_HistoryDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SalesResponse>? thisWeekHistory,
      List<SalesResponse>? lastMonthHistory});
}

/// @nodoc
class __$$_HistoryDataCopyWithImpl<$Res> extends _$HistoryDataCopyWithImpl<$Res>
    implements _$$_HistoryDataCopyWith<$Res> {
  __$$_HistoryDataCopyWithImpl(
      _$_HistoryData _value, $Res Function(_$_HistoryData) _then)
      : super(_value, (v) => _then(v as _$_HistoryData));

  @override
  _$_HistoryData get _value => super._value as _$_HistoryData;

  @override
  $Res call({
    Object? thisWeekHistory = freezed,
    Object? lastMonthHistory = freezed,
  }) {
    return _then(_$_HistoryData(
      thisWeekHistory: thisWeekHistory == freezed
          ? _value._thisWeekHistory
          : thisWeekHistory // ignore: cast_nullable_to_non_nullable
              as List<SalesResponse>?,
      lastMonthHistory: lastMonthHistory == freezed
          ? _value._lastMonthHistory
          : lastMonthHistory // ignore: cast_nullable_to_non_nullable
              as List<SalesResponse>?,
    ));
  }
}

/// @nodoc

class _$_HistoryData implements _HistoryData {
  const _$_HistoryData(
      {required final List<SalesResponse>? thisWeekHistory,
      required final List<SalesResponse>? lastMonthHistory})
      : _thisWeekHistory = thisWeekHistory,
        _lastMonthHistory = lastMonthHistory;

  final List<SalesResponse>? _thisWeekHistory;
  @override
  List<SalesResponse>? get thisWeekHistory {
    final value = _thisWeekHistory;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SalesResponse>? _lastMonthHistory;
  @override
  List<SalesResponse>? get lastMonthHistory {
    final value = _lastMonthHistory;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistoryData(thisWeekHistory: $thisWeekHistory, lastMonthHistory: $lastMonthHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryData &&
            const DeepCollectionEquality()
                .equals(other._thisWeekHistory, _thisWeekHistory) &&
            const DeepCollectionEquality()
                .equals(other._lastMonthHistory, _lastMonthHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_thisWeekHistory),
      const DeepCollectionEquality().hash(_lastMonthHistory));

  @JsonKey(ignore: true)
  @override
  _$$_HistoryDataCopyWith<_$_HistoryData> get copyWith =>
      __$$_HistoryDataCopyWithImpl<_$_HistoryData>(this, _$identity);
}

abstract class _HistoryData implements HistoryData {
  const factory _HistoryData(
      {required final List<SalesResponse>? thisWeekHistory,
      required final List<SalesResponse>? lastMonthHistory}) = _$_HistoryData;

  @override
  List<SalesResponse>? get thisWeekHistory;
  @override
  List<SalesResponse>? get lastMonthHistory;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryDataCopyWith<_$_HistoryData> get copyWith =>
      throw _privateConstructorUsedError;
}
