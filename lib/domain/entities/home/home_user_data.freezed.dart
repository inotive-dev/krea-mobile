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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeUserData {
  Contribution get contribution => throw _privateConstructorUsedError;
  int get totalSaldoSimpananUtang => throw _privateConstructorUsedError;
  int? get totalSaldoSimpananPokok => throw _privateConstructorUsedError;
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
      {Contribution contribution,
      int totalSaldoSimpananUtang,
      int? totalSaldoSimpananPokok,
      int totalUtang});

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
    Object? totalSaldoSimpananPokok = freezed,
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
      totalSaldoSimpananPokok: totalSaldoSimpananPokok == freezed
          ? _value.totalSaldoSimpananPokok
          : totalSaldoSimpananPokok // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_HomeUserDataCopyWith<$Res>
    implements $HomeUserDataCopyWith<$Res> {
  factory _$$_HomeUserDataCopyWith(
          _$_HomeUserData value, $Res Function(_$_HomeUserData) then) =
      __$$_HomeUserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {Contribution contribution,
      int totalSaldoSimpananUtang,
      int? totalSaldoSimpananPokok,
      int totalUtang});

  @override
  $ContributionCopyWith<$Res> get contribution;
}

/// @nodoc
class __$$_HomeUserDataCopyWithImpl<$Res>
    extends _$HomeUserDataCopyWithImpl<$Res>
    implements _$$_HomeUserDataCopyWith<$Res> {
  __$$_HomeUserDataCopyWithImpl(
      _$_HomeUserData _value, $Res Function(_$_HomeUserData) _then)
      : super(_value, (v) => _then(v as _$_HomeUserData));

  @override
  _$_HomeUserData get _value => super._value as _$_HomeUserData;

  @override
  $Res call({
    Object? contribution = freezed,
    Object? totalSaldoSimpananUtang = freezed,
    Object? totalSaldoSimpananPokok = freezed,
    Object? totalUtang = freezed,
  }) {
    return _then(_$_HomeUserData(
      contribution: contribution == freezed
          ? _value.contribution
          : contribution // ignore: cast_nullable_to_non_nullable
              as Contribution,
      totalSaldoSimpananUtang: totalSaldoSimpananUtang == freezed
          ? _value.totalSaldoSimpananUtang
          : totalSaldoSimpananUtang // ignore: cast_nullable_to_non_nullable
              as int,
      totalSaldoSimpananPokok: totalSaldoSimpananPokok == freezed
          ? _value.totalSaldoSimpananPokok
          : totalSaldoSimpananPokok // ignore: cast_nullable_to_non_nullable
              as int?,
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
      required this.totalSaldoSimpananPokok,
      required this.totalUtang});

  @override
  final Contribution contribution;
  @override
  final int totalSaldoSimpananUtang;
  @override
  final int? totalSaldoSimpananPokok;
  @override
  final int totalUtang;

  @override
  String toString() {
    return 'HomeUserData(contribution: $contribution, totalSaldoSimpananUtang: $totalSaldoSimpananUtang, totalSaldoSimpananPokok: $totalSaldoSimpananPokok, totalUtang: $totalUtang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeUserData &&
            const DeepCollectionEquality()
                .equals(other.contribution, contribution) &&
            const DeepCollectionEquality().equals(
                other.totalSaldoSimpananUtang, totalSaldoSimpananUtang) &&
            const DeepCollectionEquality().equals(
                other.totalSaldoSimpananPokok, totalSaldoSimpananPokok) &&
            const DeepCollectionEquality()
                .equals(other.totalUtang, totalUtang));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(contribution),
      const DeepCollectionEquality().hash(totalSaldoSimpananUtang),
      const DeepCollectionEquality().hash(totalSaldoSimpananPokok),
      const DeepCollectionEquality().hash(totalUtang));

  @JsonKey(ignore: true)
  @override
  _$$_HomeUserDataCopyWith<_$_HomeUserData> get copyWith =>
      __$$_HomeUserDataCopyWithImpl<_$_HomeUserData>(this, _$identity);
}

abstract class _HomeUserData implements HomeUserData {
  const factory _HomeUserData(
      {required final Contribution contribution,
      required final int totalSaldoSimpananUtang,
      required final int? totalSaldoSimpananPokok,
      required final int totalUtang}) = _$_HomeUserData;

  @override
  Contribution get contribution;
  @override
  int get totalSaldoSimpananUtang;
  @override
  int? get totalSaldoSimpananPokok;
  @override
  int get totalUtang;
  @override
  @JsonKey(ignore: true)
  _$$_HomeUserDataCopyWith<_$_HomeUserData> get copyWith =>
      throw _privateConstructorUsedError;
}
