// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contribution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContributionTearOff {
  const _$ContributionTearOff();

  _Contribution call(
      {required String? contributionWajib,
      required String? contributionPokok,
      required double? contributionSukarela}) {
    return _Contribution(
      contributionWajib: contributionWajib,
      contributionPokok: contributionPokok,
      contributionSukarela: contributionSukarela,
    );
  }
}

/// @nodoc
const $Contribution = _$ContributionTearOff();

/// @nodoc
mixin _$Contribution {
  String? get contributionWajib => throw _privateConstructorUsedError;
  String? get contributionPokok => throw _privateConstructorUsedError;
  double? get contributionSukarela => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContributionCopyWith<Contribution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContributionCopyWith<$Res> {
  factory $ContributionCopyWith(
          Contribution value, $Res Function(Contribution) then) =
      _$ContributionCopyWithImpl<$Res>;
  $Res call(
      {String? contributionWajib,
      String? contributionPokok,
      double? contributionSukarela});
}

/// @nodoc
class _$ContributionCopyWithImpl<$Res> implements $ContributionCopyWith<$Res> {
  _$ContributionCopyWithImpl(this._value, this._then);

  final Contribution _value;
  // ignore: unused_field
  final $Res Function(Contribution) _then;

  @override
  $Res call({
    Object? contributionWajib = freezed,
    Object? contributionPokok = freezed,
    Object? contributionSukarela = freezed,
  }) {
    return _then(_value.copyWith(
      contributionWajib: contributionWajib == freezed
          ? _value.contributionWajib
          : contributionWajib // ignore: cast_nullable_to_non_nullable
              as String?,
      contributionPokok: contributionPokok == freezed
          ? _value.contributionPokok
          : contributionPokok // ignore: cast_nullable_to_non_nullable
              as String?,
      contributionSukarela: contributionSukarela == freezed
          ? _value.contributionSukarela
          : contributionSukarela // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$ContributionCopyWith<$Res>
    implements $ContributionCopyWith<$Res> {
  factory _$ContributionCopyWith(
          _Contribution value, $Res Function(_Contribution) then) =
      __$ContributionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? contributionWajib,
      String? contributionPokok,
      double? contributionSukarela});
}

/// @nodoc
class __$ContributionCopyWithImpl<$Res> extends _$ContributionCopyWithImpl<$Res>
    implements _$ContributionCopyWith<$Res> {
  __$ContributionCopyWithImpl(
      _Contribution _value, $Res Function(_Contribution) _then)
      : super(_value, (v) => _then(v as _Contribution));

  @override
  _Contribution get _value => super._value as _Contribution;

  @override
  $Res call({
    Object? contributionWajib = freezed,
    Object? contributionPokok = freezed,
    Object? contributionSukarela = freezed,
  }) {
    return _then(_Contribution(
      contributionWajib: contributionWajib == freezed
          ? _value.contributionWajib
          : contributionWajib // ignore: cast_nullable_to_non_nullable
              as String?,
      contributionPokok: contributionPokok == freezed
          ? _value.contributionPokok
          : contributionPokok // ignore: cast_nullable_to_non_nullable
              as String?,
      contributionSukarela: contributionSukarela == freezed
          ? _value.contributionSukarela
          : contributionSukarela // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Contribution implements _Contribution {
  const _$_Contribution(
      {required this.contributionWajib,
      required this.contributionPokok,
      required this.contributionSukarela});

  @override
  final String? contributionWajib;
  @override
  final String? contributionPokok;
  @override
  final double? contributionSukarela;

  @override
  String toString() {
    return 'Contribution(contributionWajib: $contributionWajib, contributionPokok: $contributionPokok, contributionSukarela: $contributionSukarela)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Contribution &&
            const DeepCollectionEquality()
                .equals(other.contributionWajib, contributionWajib) &&
            const DeepCollectionEquality()
                .equals(other.contributionPokok, contributionPokok) &&
            const DeepCollectionEquality()
                .equals(other.contributionSukarela, contributionSukarela));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(contributionWajib),
      const DeepCollectionEquality().hash(contributionPokok),
      const DeepCollectionEquality().hash(contributionSukarela));

  @JsonKey(ignore: true)
  @override
  _$ContributionCopyWith<_Contribution> get copyWith =>
      __$ContributionCopyWithImpl<_Contribution>(this, _$identity);
}

abstract class _Contribution implements Contribution {
  const factory _Contribution(
      {required String? contributionWajib,
      required String? contributionPokok,
      required double? contributionSukarela}) = _$_Contribution;

  @override
  String? get contributionWajib;
  @override
  String? get contributionPokok;
  @override
  double? get contributionSukarela;
  @override
  @JsonKey(ignore: true)
  _$ContributionCopyWith<_Contribution> get copyWith =>
      throw _privateConstructorUsedError;
}
