// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {ResultState<dynamic> getHomeAdminResultState =
          const ResultState.initial(),
      ResultState<dynamic> getHomeUserResultState = const ResultState.initial(),
      ResultState<dynamic> updateSalesReportState = const ResultState.initial(),
      required DateTime lastUpdated,
      required HomeData homeData,
      required HomeUserData homeUserData,
      required int martId}) {
    return _HomeState(
      getHomeAdminResultState: getHomeAdminResultState,
      getHomeUserResultState: getHomeUserResultState,
      updateSalesReportState: updateSalesReportState,
      lastUpdated: lastUpdated,
      homeData: homeData,
      homeUserData: homeUserData,
      martId: martId,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  ResultState<dynamic> get getHomeAdminResultState =>
      throw _privateConstructorUsedError;
  ResultState<dynamic> get getHomeUserResultState =>
      throw _privateConstructorUsedError;
  ResultState<dynamic> get updateSalesReportState =>
      throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  HomeData get homeData => throw _privateConstructorUsedError;
  HomeUserData get homeUserData => throw _privateConstructorUsedError;
  int get martId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {ResultState<dynamic> getHomeAdminResultState,
      ResultState<dynamic> getHomeUserResultState,
      ResultState<dynamic> updateSalesReportState,
      DateTime lastUpdated,
      HomeData homeData,
      HomeUserData homeUserData,
      int martId});

  $ResultStateCopyWith<dynamic, $Res> get getHomeAdminResultState;
  $ResultStateCopyWith<dynamic, $Res> get getHomeUserResultState;
  $ResultStateCopyWith<dynamic, $Res> get updateSalesReportState;
  $HomeDataCopyWith<$Res> get homeData;
  $HomeUserDataCopyWith<$Res> get homeUserData;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? getHomeAdminResultState = freezed,
    Object? getHomeUserResultState = freezed,
    Object? updateSalesReportState = freezed,
    Object? lastUpdated = freezed,
    Object? homeData = freezed,
    Object? homeUserData = freezed,
    Object? martId = freezed,
  }) {
    return _then(_value.copyWith(
      getHomeAdminResultState: getHomeAdminResultState == freezed
          ? _value.getHomeAdminResultState
          : getHomeAdminResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      getHomeUserResultState: getHomeUserResultState == freezed
          ? _value.getHomeUserResultState
          : getHomeUserResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      updateSalesReportState: updateSalesReportState == freezed
          ? _value.updateSalesReportState
          : updateSalesReportState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      homeData: homeData == freezed
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeData,
      homeUserData: homeUserData == freezed
          ? _value.homeUserData
          : homeUserData // ignore: cast_nullable_to_non_nullable
              as HomeUserData,
      martId: martId == freezed
          ? _value.martId
          : martId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ResultStateCopyWith<dynamic, $Res> get getHomeAdminResultState {
    return $ResultStateCopyWith<dynamic, $Res>(_value.getHomeAdminResultState,
        (value) {
      return _then(_value.copyWith(getHomeAdminResultState: value));
    });
  }

  @override
  $ResultStateCopyWith<dynamic, $Res> get getHomeUserResultState {
    return $ResultStateCopyWith<dynamic, $Res>(_value.getHomeUserResultState,
        (value) {
      return _then(_value.copyWith(getHomeUserResultState: value));
    });
  }

  @override
  $ResultStateCopyWith<dynamic, $Res> get updateSalesReportState {
    return $ResultStateCopyWith<dynamic, $Res>(_value.updateSalesReportState,
        (value) {
      return _then(_value.copyWith(updateSalesReportState: value));
    });
  }

  @override
  $HomeDataCopyWith<$Res> get homeData {
    return $HomeDataCopyWith<$Res>(_value.homeData, (value) {
      return _then(_value.copyWith(homeData: value));
    });
  }

  @override
  $HomeUserDataCopyWith<$Res> get homeUserData {
    return $HomeUserDataCopyWith<$Res>(_value.homeUserData, (value) {
      return _then(_value.copyWith(homeUserData: value));
    });
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResultState<dynamic> getHomeAdminResultState,
      ResultState<dynamic> getHomeUserResultState,
      ResultState<dynamic> updateSalesReportState,
      DateTime lastUpdated,
      HomeData homeData,
      HomeUserData homeUserData,
      int martId});

  @override
  $ResultStateCopyWith<dynamic, $Res> get getHomeAdminResultState;
  @override
  $ResultStateCopyWith<dynamic, $Res> get getHomeUserResultState;
  @override
  $ResultStateCopyWith<dynamic, $Res> get updateSalesReportState;
  @override
  $HomeDataCopyWith<$Res> get homeData;
  @override
  $HomeUserDataCopyWith<$Res> get homeUserData;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? getHomeAdminResultState = freezed,
    Object? getHomeUserResultState = freezed,
    Object? updateSalesReportState = freezed,
    Object? lastUpdated = freezed,
    Object? homeData = freezed,
    Object? homeUserData = freezed,
    Object? martId = freezed,
  }) {
    return _then(_HomeState(
      getHomeAdminResultState: getHomeAdminResultState == freezed
          ? _value.getHomeAdminResultState
          : getHomeAdminResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      getHomeUserResultState: getHomeUserResultState == freezed
          ? _value.getHomeUserResultState
          : getHomeUserResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      updateSalesReportState: updateSalesReportState == freezed
          ? _value.updateSalesReportState
          : updateSalesReportState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      homeData: homeData == freezed
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeData,
      homeUserData: homeUserData == freezed
          ? _value.homeUserData
          : homeUserData // ignore: cast_nullable_to_non_nullable
              as HomeUserData,
      martId: martId == freezed
          ? _value.martId
          : martId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.getHomeAdminResultState = const ResultState.initial(),
      this.getHomeUserResultState = const ResultState.initial(),
      this.updateSalesReportState = const ResultState.initial(),
      required this.lastUpdated,
      required this.homeData,
      required this.homeUserData,
      required this.martId});

  @JsonKey()
  @override
  final ResultState<dynamic> getHomeAdminResultState;
  @JsonKey()
  @override
  final ResultState<dynamic> getHomeUserResultState;
  @JsonKey()
  @override
  final ResultState<dynamic> updateSalesReportState;
  @override
  final DateTime lastUpdated;
  @override
  final HomeData homeData;
  @override
  final HomeUserData homeUserData;
  @override
  final int martId;

  @override
  String toString() {
    return 'HomeState(getHomeAdminResultState: $getHomeAdminResultState, getHomeUserResultState: $getHomeUserResultState, updateSalesReportState: $updateSalesReportState, lastUpdated: $lastUpdated, homeData: $homeData, homeUserData: $homeUserData, martId: $martId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality().equals(
                other.getHomeAdminResultState, getHomeAdminResultState) &&
            const DeepCollectionEquality()
                .equals(other.getHomeUserResultState, getHomeUserResultState) &&
            const DeepCollectionEquality()
                .equals(other.updateSalesReportState, updateSalesReportState) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.homeData, homeData) &&
            const DeepCollectionEquality()
                .equals(other.homeUserData, homeUserData) &&
            const DeepCollectionEquality().equals(other.martId, martId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(getHomeAdminResultState),
      const DeepCollectionEquality().hash(getHomeUserResultState),
      const DeepCollectionEquality().hash(updateSalesReportState),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(homeData),
      const DeepCollectionEquality().hash(homeUserData),
      const DeepCollectionEquality().hash(martId));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {ResultState<dynamic> getHomeAdminResultState,
      ResultState<dynamic> getHomeUserResultState,
      ResultState<dynamic> updateSalesReportState,
      required DateTime lastUpdated,
      required HomeData homeData,
      required HomeUserData homeUserData,
      required int martId}) = _$_HomeState;

  @override
  ResultState<dynamic> get getHomeAdminResultState;
  @override
  ResultState<dynamic> get getHomeUserResultState;
  @override
  ResultState<dynamic> get updateSalesReportState;
  @override
  DateTime get lastUpdated;
  @override
  HomeData get homeData;
  @override
  HomeUserData get homeUserData;
  @override
  int get martId;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
