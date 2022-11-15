// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryDataResponse _$HistoryDataResponseFromJson(Map<String, dynamic> json) {
  return _HistoryDataResponse.fromJson(json);
}

/// @nodoc
mixin _$HistoryDataResponse {
  @JsonKey(name: 'this_week_history')
  List<SalesResponse>? get thisWeekHistory =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'last_month_history')
  List<SalesResponse>? get lastMonthHistory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryDataResponseCopyWith<HistoryDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryDataResponseCopyWith<$Res> {
  factory $HistoryDataResponseCopyWith(
          HistoryDataResponse value, $Res Function(HistoryDataResponse) then) =
      _$HistoryDataResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'this_week_history')
          List<SalesResponse>? thisWeekHistory,
      @JsonKey(name: 'last_month_history')
          List<SalesResponse>? lastMonthHistory});
}

/// @nodoc
class _$HistoryDataResponseCopyWithImpl<$Res>
    implements $HistoryDataResponseCopyWith<$Res> {
  _$HistoryDataResponseCopyWithImpl(this._value, this._then);

  final HistoryDataResponse _value;
  // ignore: unused_field
  final $Res Function(HistoryDataResponse) _then;

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
abstract class _$$_HistoryDataResponseCopyWith<$Res>
    implements $HistoryDataResponseCopyWith<$Res> {
  factory _$$_HistoryDataResponseCopyWith(_$_HistoryDataResponse value,
          $Res Function(_$_HistoryDataResponse) then) =
      __$$_HistoryDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'this_week_history')
          List<SalesResponse>? thisWeekHistory,
      @JsonKey(name: 'last_month_history')
          List<SalesResponse>? lastMonthHistory});
}

/// @nodoc
class __$$_HistoryDataResponseCopyWithImpl<$Res>
    extends _$HistoryDataResponseCopyWithImpl<$Res>
    implements _$$_HistoryDataResponseCopyWith<$Res> {
  __$$_HistoryDataResponseCopyWithImpl(_$_HistoryDataResponse _value,
      $Res Function(_$_HistoryDataResponse) _then)
      : super(_value, (v) => _then(v as _$_HistoryDataResponse));

  @override
  _$_HistoryDataResponse get _value => super._value as _$_HistoryDataResponse;

  @override
  $Res call({
    Object? thisWeekHistory = freezed,
    Object? lastMonthHistory = freezed,
  }) {
    return _then(_$_HistoryDataResponse(
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
@JsonSerializable()
class _$_HistoryDataResponse extends _HistoryDataResponse {
  const _$_HistoryDataResponse(
      {@JsonKey(name: 'this_week_history')
          required final List<SalesResponse>? thisWeekHistory,
      @JsonKey(name: 'last_month_history')
          required final List<SalesResponse>? lastMonthHistory})
      : _thisWeekHistory = thisWeekHistory,
        _lastMonthHistory = lastMonthHistory,
        super._();

  factory _$_HistoryDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryDataResponseFromJson(json);

  final List<SalesResponse>? _thisWeekHistory;
  @override
  @JsonKey(name: 'this_week_history')
  List<SalesResponse>? get thisWeekHistory {
    final value = _thisWeekHistory;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SalesResponse>? _lastMonthHistory;
  @override
  @JsonKey(name: 'last_month_history')
  List<SalesResponse>? get lastMonthHistory {
    final value = _lastMonthHistory;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistoryDataResponse(thisWeekHistory: $thisWeekHistory, lastMonthHistory: $lastMonthHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryDataResponse &&
            const DeepCollectionEquality()
                .equals(other._thisWeekHistory, _thisWeekHistory) &&
            const DeepCollectionEquality()
                .equals(other._lastMonthHistory, _lastMonthHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_thisWeekHistory),
      const DeepCollectionEquality().hash(_lastMonthHistory));

  @JsonKey(ignore: true)
  @override
  _$$_HistoryDataResponseCopyWith<_$_HistoryDataResponse> get copyWith =>
      __$$_HistoryDataResponseCopyWithImpl<_$_HistoryDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryDataResponseToJson(
      this,
    );
  }
}

abstract class _HistoryDataResponse extends HistoryDataResponse {
  const factory _HistoryDataResponse(
          {@JsonKey(name: 'this_week_history')
              required final List<SalesResponse>? thisWeekHistory,
          @JsonKey(name: 'last_month_history')
              required final List<SalesResponse>? lastMonthHistory}) =
      _$_HistoryDataResponse;
  const _HistoryDataResponse._() : super._();

  factory _HistoryDataResponse.fromJson(Map<String, dynamic> json) =
      _$_HistoryDataResponse.fromJson;

  @override
  @JsonKey(name: 'this_week_history')
  List<SalesResponse>? get thisWeekHistory;
  @override
  @JsonKey(name: 'last_month_history')
  List<SalesResponse>? get lastMonthHistory;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryDataResponseCopyWith<_$_HistoryDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
