// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeUserDataTearOff {
  const _$HomeUserDataTearOff();

  _HomeUserData call(
      {required Contribution contribution,
      required int totalSaldoSimpananUtang,
      required int totalUtang}) {
    return _HomeUserData(
      contribution: contribution,
      totalSaldoSimpananUtang: totalSaldoSimpananUtang,
      totalUtang: totalUtang,
    );
  }
}

/// @nodoc
const $HomeUserData = _$HomeUserDataTearOff();

/// @nodoc
mixin _$HomeUserData {
  Contribution get contribution => throw _privateConstructorUsedError;
  int get totalSaldoSimpananUtang => throw _privateConstructorUsedError;
  int get totalUtang => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeUserDataCopyWith<HomeUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUserDataCopyWith<$Res> {
  factory $HomeUserDataCopyWith(
          HomeUserData value, $Res Function(HomeUserData) then) =
      _$HomeUserDataCopyWithImpl<$Res>;
  $Res call(
      {Contribution contribution, int totalSaldoSimpananUtang, int totalUtang});

  $ContributionCopyWith<$Res> get contribution;
}

/// @nodoc
class _$HomeUserDataCopyWithImpl<$Res> implements $HomeUserDataCopyWith<$Res> {
  _$HomeUserDataCopyWithImpl(this._value, this._then);

  final HomeUserData _value;
  // ignore: unused_field
  final $Res Function(HomeUserData) _then;

  @override
  $Res call({
    Object? contribution = freezed,
    Object? totalSaldoSimpananUtang = freezed,
    Object? totalUtang = freezed,
  }) {
    return _then(_value.copyWith(
      contribution: contribution == freezed
          ? _value.contribution
          : contribution // ignore: cast_nullable_to_non_nullable
              as Contribution,
      totalSaldoSimpananUtang: totalSaldoSimpananUtang == freezed
          ? _value.totalSaldoSimpananUtang
          : totalSaldoSimpananUtang // ignore: cast_nullable_to_non_nullable
              as int,
      totalUtang: totalUtang == freezed
          ? _value.totalUtang
          : totalUtang // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ContributionCopyWith<$Res> get contribution {
    return $ContributionCopyWith<$Res>(_value.contribution, (value) {
      return _then(_value.copyWith(contribution: value));
    });
  }
}

/// @nodoc
abstract class _$HomeUserDataCopyWith<$Res>
    implements $HomeUserDataCopyWith<$Res> {
  factory _$HomeUserDataCopyWith(
          _HomeUserData value, $Res Function(_HomeUserData) then) =
      __$HomeUserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {Contribution contribution, int totalSaldoSimpananUtang, int totalUtang});

  @override
  $ContributionCopyWith<$Res> get contribution;
}

/// @nodoc
class __$HomeUserDataCopyWithImpl<$Res> extends _$HomeUserDataCopyWithImpl<$Res>
    implements _$HomeUserDataCopyWith<$Res> {
  __$HomeUserDataCopyWithImpl(
      _HomeUserData _value, $Res Function(_HomeUserData) _then)
      : super(_value, (v) => _then(v as _HomeUserData));

  @override
  _HomeUserData get _value => super._value as _HomeUserData;

  @override
  $Res call({
    Object? contribution = freezed,
    Object? totalSaldoSimpananUtang = freezed,
    Object? totalUtang = freezed,
  }) {
    return _then(_HomeUserData(
      contribution: contribution == freezed
          ? _value.contribution
          : contribution // ignore: cast_nullable_to_non_nullable
              as Contribution,
      totalSaldoSimpananUtang: totalSaldoSimpananUtang == freezed
          ? _value.totalSaldoSimpananUtang
          : totalSaldoSimpananUtang // ignore: cast_nullable_to_non_nullable
              as int,
      totalUtang: totalUtang == freezed
          ? _value.totalUtang
          : totalUtang // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeUserData implements _HomeUserData {
  const _$_HomeUserData(
      {required this.contribution,
      required this.totalSaldoSimpananUtang,
      required this.totalUtang});

  @override
  final Contribution contribution;
  @override
  final int totalSaldoSimpananUtang;
  @override
  final int totalUtang;

  @override
  String toString() {
    return 'HomeUserData(contribution: $contribution, totalSaldoSimpananUtang: $totalSaldoSimpananUtang, totalUtang: $totalUtang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeUserData &&
            const DeepCollectionEquality()
                .equals(other.contribution, contribution) &&
            const DeepCollectionEquality().equals(
                other.totalSaldoSimpananUtang, totalSaldoSimpananUtang) &&
            const DeepCollectionEquality()
                .equals(other.totalUtang, totalUtang));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(contribution),
      const DeepCollectionEquality().hash(totalSaldoSimpananUtang),
      const DeepCollectionEquality().hash(totalUtang));

  @JsonKey(ignore: true)
  @override
  _$HomeUserDataCopyWith<_HomeUserData> get copyWith =>
      __$HomeUserDataCopyWithImpl<_HomeUserData>(this, _$identity);
}

abstract class _HomeUserData implements HomeUserData {
  const factory _HomeUserData(
      {required Contribution contribution,
      required int totalSaldoSimpananUtang,
      required int totalUtang}) = _$_HomeUserData;

  @override
  Contribution get contribution;
  @override
  int get totalSaldoSimpananUtang;
  @override
  int get totalUtang;
  @override
  @JsonKey(ignore: true)
  _$HomeUserDataCopyWith<_HomeUserData> get copyWith =>
      throw _privateConstructorUsedError;
}
