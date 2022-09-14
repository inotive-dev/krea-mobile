// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryStateTearOff {
  const _$HistoryStateTearOff();

  _HistoryState call(
      {ResultState<dynamic> getHistoryAdminResultState =
          const ResultState.initial(),
      ResultState<dynamic> getHistoryUserResultState =
          const ResultState.initial(),
      ResultState<dynamic> getHistoryDetailResultState =
          const ResultState.initial(),
      Map<dynamic, dynamic> selectedMart = const {'id': 1, 'name': 'Mart Alfa'},
      required HistoryData historyData,
      required List<HistoryDetailData>? historyDetailData}) {
    return _HistoryState(
      getHistoryAdminResultState: getHistoryAdminResultState,
      getHistoryUserResultState: getHistoryUserResultState,
      getHistoryDetailResultState: getHistoryDetailResultState,
      selectedMart: selectedMart,
      historyData: historyData,
      historyDetailData: historyDetailData,
    );
  }
}

/// @nodoc
const $HistoryState = _$HistoryStateTearOff();

/// @nodoc
mixin _$HistoryState {
  ResultState<dynamic> get getHistoryAdminResultState =>
      throw _privateConstructorUsedError;
  ResultState<dynamic> get getHistoryUserResultState =>
      throw _privateConstructorUsedError;
  ResultState<dynamic> get getHistoryDetailResultState =>
      throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get selectedMart => throw _privateConstructorUsedError;
  HistoryData get historyData => throw _privateConstructorUsedError;
  List<HistoryDetailData>? get historyDetailData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
  $Res call(
      {ResultState<dynamic> getHistoryAdminResultState,
      ResultState<dynamic> getHistoryUserResultState,
      ResultState<dynamic> getHistoryDetailResultState,
      Map<dynamic, dynamic> selectedMart,
      HistoryData historyData,
      List<HistoryDetailData>? historyDetailData});

  $ResultStateCopyWith<dynamic, $Res> get getHistoryAdminResultState;
  $ResultStateCopyWith<dynamic, $Res> get getHistoryUserResultState;
  $ResultStateCopyWith<dynamic, $Res> get getHistoryDetailResultState;
  $HistoryDataCopyWith<$Res> get historyData;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;

  @override
  $Res call({
    Object? getHistoryAdminResultState = freezed,
    Object? getHistoryUserResultState = freezed,
    Object? getHistoryDetailResultState = freezed,
    Object? selectedMart = freezed,
    Object? historyData = freezed,
    Object? historyDetailData = freezed,
  }) {
    return _then(_value.copyWith(
      getHistoryAdminResultState: getHistoryAdminResultState == freezed
          ? _value.getHistoryAdminResultState
          : getHistoryAdminResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      getHistoryUserResultState: getHistoryUserResultState == freezed
          ? _value.getHistoryUserResultState
          : getHistoryUserResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      getHistoryDetailResultState: getHistoryDetailResultState == freezed
          ? _value.getHistoryDetailResultState
          : getHistoryDetailResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      selectedMart: selectedMart == freezed
          ? _value.selectedMart
          : selectedMart // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      historyData: historyData == freezed
          ? _value.historyData
          : historyData // ignore: cast_nullable_to_non_nullable
              as HistoryData,
      historyDetailData: historyDetailData == freezed
          ? _value.historyDetailData
          : historyDetailData // ignore: cast_nullable_to_non_nullable
              as List<HistoryDetailData>?,
    ));
  }

  @override
  $ResultStateCopyWith<dynamic, $Res> get getHistoryAdminResultState {
    return $ResultStateCopyWith<dynamic, $Res>(
        _value.getHistoryAdminResultState, (value) {
      return _then(_value.copyWith(getHistoryAdminResultState: value));
    });
  }

  @override
  $ResultStateCopyWith<dynamic, $Res> get getHistoryUserResultState {
    return $ResultStateCopyWith<dynamic, $Res>(_value.getHistoryUserResultState,
        (value) {
      return _then(_value.copyWith(getHistoryUserResultState: value));
    });
  }

  @override
  $ResultStateCopyWith<dynamic, $Res> get getHistoryDetailResultState {
    return $ResultStateCopyWith<dynamic, $Res>(
        _value.getHistoryDetailResultState, (value) {
      return _then(_value.copyWith(getHistoryDetailResultState: value));
    });
  }

  @override
  $HistoryDataCopyWith<$Res> get historyData {
    return $HistoryDataCopyWith<$Res>(_value.historyData, (value) {
      return _then(_value.copyWith(historyData: value));
    });
  }
}

/// @nodoc
abstract class _$HistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$HistoryStateCopyWith(
          _HistoryState value, $Res Function(_HistoryState) then) =
      __$HistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResultState<dynamic> getHistoryAdminResultState,
      ResultState<dynamic> getHistoryUserResultState,
      ResultState<dynamic> getHistoryDetailResultState,
      Map<dynamic, dynamic> selectedMart,
      HistoryData historyData,
      List<HistoryDetailData>? historyDetailData});

  @override
  $ResultStateCopyWith<dynamic, $Res> get getHistoryAdminResultState;
  @override
  $ResultStateCopyWith<dynamic, $Res> get getHistoryUserResultState;
  @override
  $ResultStateCopyWith<dynamic, $Res> get getHistoryDetailResultState;
  @override
  $HistoryDataCopyWith<$Res> get historyData;
}

/// @nodoc
class __$HistoryStateCopyWithImpl<$Res> extends _$HistoryStateCopyWithImpl<$Res>
    implements _$HistoryStateCopyWith<$Res> {
  __$HistoryStateCopyWithImpl(
      _HistoryState _value, $Res Function(_HistoryState) _then)
      : super(_value, (v) => _then(v as _HistoryState));

  @override
  _HistoryState get _value => super._value as _HistoryState;

  @override
  $Res call({
    Object? getHistoryAdminResultState = freezed,
    Object? getHistoryUserResultState = freezed,
    Object? getHistoryDetailResultState = freezed,
    Object? selectedMart = freezed,
    Object? historyData = freezed,
    Object? historyDetailData = freezed,
  }) {
    return _then(_HistoryState(
      getHistoryAdminResultState: getHistoryAdminResultState == freezed
          ? _value.getHistoryAdminResultState
          : getHistoryAdminResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      getHistoryUserResultState: getHistoryUserResultState == freezed
          ? _value.getHistoryUserResultState
          : getHistoryUserResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      getHistoryDetailResultState: getHistoryDetailResultState == freezed
          ? _value.getHistoryDetailResultState
          : getHistoryDetailResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      selectedMart: selectedMart == freezed
          ? _value.selectedMart
          : selectedMart // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      historyData: historyData == freezed
          ? _value.historyData
          : historyData // ignore: cast_nullable_to_non_nullable
              as HistoryData,
      historyDetailData: historyDetailData == freezed
          ? _value.historyDetailData
          : historyDetailData // ignore: cast_nullable_to_non_nullable
              as List<HistoryDetailData>?,
    ));
  }
}

/// @nodoc

class _$_HistoryState implements _HistoryState {
  const _$_HistoryState(
      {this.getHistoryAdminResultState = const ResultState.initial(),
      this.getHistoryUserResultState = const ResultState.initial(),
      this.getHistoryDetailResultState = const ResultState.initial(),
      this.selectedMart = const {'id': 1, 'name': 'Mart Alfa'},
      required this.historyData,
      required this.historyDetailData});

  @JsonKey()
  @override
  final ResultState<dynamic> getHistoryAdminResultState;
  @JsonKey()
  @override
  final ResultState<dynamic> getHistoryUserResultState;
  @JsonKey()
  @override
  final ResultState<dynamic> getHistoryDetailResultState;
  @JsonKey()
  @override
  final Map<dynamic, dynamic> selectedMart;
  @override
  final HistoryData historyData;
  @override
  final List<HistoryDetailData>? historyDetailData;

  @override
  String toString() {
    return 'HistoryState(getHistoryAdminResultState: $getHistoryAdminResultState, getHistoryUserResultState: $getHistoryUserResultState, getHistoryDetailResultState: $getHistoryDetailResultState, selectedMart: $selectedMart, historyData: $historyData, historyDetailData: $historyDetailData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryState &&
            const DeepCollectionEquality().equals(
                other.getHistoryAdminResultState, getHistoryAdminResultState) &&
            const DeepCollectionEquality().equals(
                other.getHistoryUserResultState, getHistoryUserResultState) &&
            const DeepCollectionEquality().equals(
                other.getHistoryDetailResultState,
                getHistoryDetailResultState) &&
            const DeepCollectionEquality()
                .equals(other.selectedMart, selectedMart) &&
            const DeepCollectionEquality()
                .equals(other.historyData, historyData) &&
            const DeepCollectionEquality()
                .equals(other.historyDetailData, historyDetailData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(getHistoryAdminResultState),
      const DeepCollectionEquality().hash(getHistoryUserResultState),
      const DeepCollectionEquality().hash(getHistoryDetailResultState),
      const DeepCollectionEquality().hash(selectedMart),
      const DeepCollectionEquality().hash(historyData),
      const DeepCollectionEquality().hash(historyDetailData));

  @JsonKey(ignore: true)
  @override
  _$HistoryStateCopyWith<_HistoryState> get copyWith =>
      __$HistoryStateCopyWithImpl<_HistoryState>(this, _$identity);
}

abstract class _HistoryState implements HistoryState {
  const factory _HistoryState(
      {ResultState<dynamic> getHistoryAdminResultState,
      ResultState<dynamic> getHistoryUserResultState,
      ResultState<dynamic> getHistoryDetailResultState,
      Map<dynamic, dynamic> selectedMart,
      required HistoryData historyData,
      required List<HistoryDetailData>? historyDetailData}) = _$_HistoryState;

  @override
  ResultState<dynamic> get getHistoryAdminResultState;
  @override
  ResultState<dynamic> get getHistoryUserResultState;
  @override
  ResultState<dynamic> get getHistoryDetailResultState;
  @override
  Map<dynamic, dynamic> get selectedMart;
  @override
  HistoryData get historyData;
  @override
  List<HistoryDetailData>? get historyDetailData;
  @override
  @JsonKey(ignore: true)
  _$HistoryStateCopyWith<_HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
