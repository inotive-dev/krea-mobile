// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_user_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeUserDataResponse _$HomeUserDataResponseFromJson(Map<String, dynamic> json) {
  return _HomeUserDataResponse.fromJson(json);
}

/// @nodoc
class _$HomeUserDataResponseTearOff {
  const _$HomeUserDataResponseTearOff();

  _HomeUserDataResponse call(
      {@JsonKey(name: 'contribution')
          required ContributionResponse contribution,
      @JsonKey(name: 'total_saldo_simpanan_utang')
          required double totalSaldoSimpananUtang,
      @JsonKey(name: 'total_utang')
          required String totalUtang}) {
    return _HomeUserDataResponse(
      contribution: contribution,
      totalSaldoSimpananUtang: totalSaldoSimpananUtang,
      totalUtang: totalUtang,
    );
  }

  HomeUserDataResponse fromJson(Map<String, Object?> json) {
    return HomeUserDataResponse.fromJson(json);
  }
}

/// @nodoc
const $HomeUserDataResponse = _$HomeUserDataResponseTearOff();

/// @nodoc
mixin _$HomeUserDataResponse {
  @JsonKey(name: 'contribution')
  ContributionResponse get contribution => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_saldo_simpanan_utang')
  double get totalSaldoSimpananUtang => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_utang')
  String get totalUtang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeUserDataResponseCopyWith<HomeUserDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUserDataResponseCopyWith<$Res> {
  factory $HomeUserDataResponseCopyWith(HomeUserDataResponse value,
          $Res Function(HomeUserDataResponse) then) =
      _$HomeUserDataResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'contribution')
          ContributionResponse contribution,
      @JsonKey(name: 'total_saldo_simpanan_utang')
          double totalSaldoSimpananUtang,
      @JsonKey(name: 'total_utang')
          String totalUtang});

  $ContributionResponseCopyWith<$Res> get contribution;
}

/// @nodoc
class _$HomeUserDataResponseCopyWithImpl<$Res>
    implements $HomeUserDataResponseCopyWith<$Res> {
  _$HomeUserDataResponseCopyWithImpl(this._value, this._then);

  final HomeUserDataResponse _value;
  // ignore: unused_field
  final $Res Function(HomeUserDataResponse) _then;

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
              as ContributionResponse,
      totalSaldoSimpananUtang: totalSaldoSimpananUtang == freezed
          ? _value.totalSaldoSimpananUtang
          : totalSaldoSimpananUtang // ignore: cast_nullable_to_non_nullable
              as double,
      totalUtang: totalUtang == freezed
          ? _value.totalUtang
          : totalUtang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ContributionResponseCopyWith<$Res> get contribution {
    return $ContributionResponseCopyWith<$Res>(_value.contribution, (value) {
      return _then(_value.copyWith(contribution: value));
    });
  }
}

/// @nodoc
abstract class _$HomeUserDataResponseCopyWith<$Res>
    implements $HomeUserDataResponseCopyWith<$Res> {
  factory _$HomeUserDataResponseCopyWith(_HomeUserDataResponse value,
          $Res Function(_HomeUserDataResponse) then) =
      __$HomeUserDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'contribution')
          ContributionResponse contribution,
      @JsonKey(name: 'total_saldo_simpanan_utang')
          double totalSaldoSimpananUtang,
      @JsonKey(name: 'total_utang')
          String totalUtang});

  @override
  $ContributionResponseCopyWith<$Res> get contribution;
}

/// @nodoc
class __$HomeUserDataResponseCopyWithImpl<$Res>
    extends _$HomeUserDataResponseCopyWithImpl<$Res>
    implements _$HomeUserDataResponseCopyWith<$Res> {
  __$HomeUserDataResponseCopyWithImpl(
      _HomeUserDataResponse _value, $Res Function(_HomeUserDataResponse) _then)
      : super(_value, (v) => _then(v as _HomeUserDataResponse));

  @override
  _HomeUserDataResponse get _value => super._value as _HomeUserDataResponse;

  @override
  $Res call({
    Object? contribution = freezed,
    Object? totalSaldoSimpananUtang = freezed,
    Object? totalUtang = freezed,
  }) {
    return _then(_HomeUserDataResponse(
      contribution: contribution == freezed
          ? _value.contribution
          : contribution // ignore: cast_nullable_to_non_nullable
              as ContributionResponse,
      totalSaldoSimpananUtang: totalSaldoSimpananUtang == freezed
          ? _value.totalSaldoSimpananUtang
          : totalSaldoSimpananUtang // ignore: cast_nullable_to_non_nullable
              as double,
      totalUtang: totalUtang == freezed
          ? _value.totalUtang
          : totalUtang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeUserDataResponse extends _HomeUserDataResponse {
  const _$_HomeUserDataResponse(
      {@JsonKey(name: 'contribution')
          required this.contribution,
      @JsonKey(name: 'total_saldo_simpanan_utang')
          required this.totalSaldoSimpananUtang,
      @JsonKey(name: 'total_utang')
          required this.totalUtang})
      : super._();

  factory _$_HomeUserDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HomeUserDataResponseFromJson(json);

  @override
  @JsonKey(name: 'contribution')
  final ContributionResponse contribution;
  @override
  @JsonKey(name: 'total_saldo_simpanan_utang')
  final double totalSaldoSimpananUtang;
  @override
  @JsonKey(name: 'total_utang')
  final String totalUtang;

  @override
  String toString() {
    return 'HomeUserDataResponse(contribution: $contribution, totalSaldoSimpananUtang: $totalSaldoSimpananUtang, totalUtang: $totalUtang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeUserDataResponse &&
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
  _$HomeUserDataResponseCopyWith<_HomeUserDataResponse> get copyWith =>
      __$HomeUserDataResponseCopyWithImpl<_HomeUserDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeUserDataResponseToJson(this);
  }
}

abstract class _HomeUserDataResponse extends HomeUserDataResponse {
  const factory _HomeUserDataResponse(
      {@JsonKey(name: 'contribution')
          required ContributionResponse contribution,
      @JsonKey(name: 'total_saldo_simpanan_utang')
          required double totalSaldoSimpananUtang,
      @JsonKey(name: 'total_utang')
          required String totalUtang}) = _$_HomeUserDataResponse;
  const _HomeUserDataResponse._() : super._();

  factory _HomeUserDataResponse.fromJson(Map<String, dynamic> json) =
      _$_HomeUserDataResponse.fromJson;

  @override
  @JsonKey(name: 'contribution')
  ContributionResponse get contribution;
  @override
  @JsonKey(name: 'total_saldo_simpanan_utang')
  double get totalSaldoSimpananUtang;
  @override
  @JsonKey(name: 'total_utang')
  String get totalUtang;
  @override
  @JsonKey(ignore: true)
  _$HomeUserDataResponseCopyWith<_HomeUserDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
