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
      required HomeData homeData}) {
    return _HomeState(
      getHomeAdminResultState: getHomeAdminResultState,
      homeData: homeData,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  ResultState<dynamic> get getHomeAdminResultState =>
      throw _privateConstructorUsedError;
  HomeData get homeData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({ResultState<dynamic> getHomeAdminResultState, HomeData homeData});

  $ResultStateCopyWith<dynamic, $Res> get getHomeAdminResultState;
  $HomeDataCopyWith<$Res> get homeData;
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
    Object? homeData = freezed,
  }) {
    return _then(_value.copyWith(
      getHomeAdminResultState: getHomeAdminResultState == freezed
          ? _value.getHomeAdminResultState
          : getHomeAdminResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      homeData: homeData == freezed
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeData,
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
  $HomeDataCopyWith<$Res> get homeData {
    return $HomeDataCopyWith<$Res>(_value.homeData, (value) {
      return _then(_value.copyWith(homeData: value));
    });
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({ResultState<dynamic> getHomeAdminResultState, HomeData homeData});

  @override
  $ResultStateCopyWith<dynamic, $Res> get getHomeAdminResultState;
  @override
  $HomeDataCopyWith<$Res> get homeData;
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
    Object? homeData = freezed,
  }) {
    return _then(_HomeState(
      getHomeAdminResultState: getHomeAdminResultState == freezed
          ? _value.getHomeAdminResultState
          : getHomeAdminResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      homeData: homeData == freezed
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeData,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.getHomeAdminResultState = const ResultState.initial(),
      required this.homeData});

  @JsonKey()
  @override
  final ResultState<dynamic> getHomeAdminResultState;
  @override
  final HomeData homeData;

  @override
  String toString() {
    return 'HomeState(getHomeAdminResultState: $getHomeAdminResultState, homeData: $homeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality().equals(
                other.getHomeAdminResultState, getHomeAdminResultState) &&
            const DeepCollectionEquality().equals(other.homeData, homeData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(getHomeAdminResultState),
      const DeepCollectionEquality().hash(homeData));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {ResultState<dynamic> getHomeAdminResultState,
      required HomeData homeData}) = _$_HomeState;

  @override
  ResultState<dynamic> get getHomeAdminResultState;
  @override
  HomeData get homeData;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
