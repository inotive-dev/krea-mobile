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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeUserDataResponse _$HomeUserDataResponseFromJson(Map<String, dynamic> json) {
  return _HomeUserDataResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeUserDataResponse {
  @JsonKey(name: 'contribution')
  ContributionResponse get contribution => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_saldo_simpanan_utang')
  int get totalSaldoSimpananUtang => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_saldo_simpanan_pokok')
  int? get totalSaldoSimpananPokok => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_utang')
  int get totalUtang => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'contribution') ContributionResponse contribution,
      @JsonKey(name: 'total_saldo_simpanan_utang') int totalSaldoSimpananUtang,
      @JsonKey(name: 'total_saldo_simpanan_pokok') int? totalSaldoSimpananPokok,
      @JsonKey(name: 'total_utang') int totalUtang});

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
    Object? totalSaldoSimpananPokok = freezed,
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
  $ContributionResponseCopyWith<$Res> get contribution {
    return $ContributionResponseCopyWith<$Res>(_value.contribution, (value) {
      return _then(_value.copyWith(contribution: value));
    });
  }
}

/// @nodoc
abstract class _$$_HomeUserDataResponseCopyWith<$Res>
    implements $HomeUserDataResponseCopyWith<$Res> {
  factory _$$_HomeUserDataResponseCopyWith(_$_HomeUserDataResponse value,
          $Res Function(_$_HomeUserDataResponse) then) =
      __$$_HomeUserDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'contribution') ContributionResponse contribution,
      @JsonKey(name: 'total_saldo_simpanan_utang') int totalSaldoSimpananUtang,
      @JsonKey(name: 'total_saldo_simpanan_pokok') int? totalSaldoSimpananPokok,
      @JsonKey(name: 'total_utang') int totalUtang});

  @override
  $ContributionResponseCopyWith<$Res> get contribution;
}

/// @nodoc
class __$$_HomeUserDataResponseCopyWithImpl<$Res>
    extends _$HomeUserDataResponseCopyWithImpl<$Res>
    implements _$$_HomeUserDataResponseCopyWith<$Res> {
  __$$_HomeUserDataResponseCopyWithImpl(_$_HomeUserDataResponse _value,
      $Res Function(_$_HomeUserDataResponse) _then)
      : super(_value, (v) => _then(v as _$_HomeUserDataResponse));

  @override
  _$_HomeUserDataResponse get _value => super._value as _$_HomeUserDataResponse;

  @override
  $Res call({
    Object? contribution = freezed,
    Object? totalSaldoSimpananUtang = freezed,
    Object? totalSaldoSimpananPokok = freezed,
    Object? totalUtang = freezed,
  }) {
    return _then(_$_HomeUserDataResponse(
      contribution: contribution == freezed
          ? _value.contribution
          : contribution // ignore: cast_nullable_to_non_nullable
              as ContributionResponse,
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
@JsonSerializable()
class _$_HomeUserDataResponse extends _HomeUserDataResponse {
  const _$_HomeUserDataResponse(
      {@JsonKey(name: 'contribution')
          required this.contribution,
      @JsonKey(name: 'total_saldo_simpanan_utang')
          required this.totalSaldoSimpananUtang,
      @JsonKey(name: 'total_saldo_simpanan_pokok')
          required this.totalSaldoSimpananPokok,
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
  final int totalSaldoSimpananUtang;
  @override
  @JsonKey(name: 'total_saldo_simpanan_pokok')
  final int? totalSaldoSimpananPokok;
  @override
  @JsonKey(name: 'total_utang')
  final int totalUtang;

  @override
  String toString() {
    return 'HomeUserDataResponse(contribution: $contribution, totalSaldoSimpananUtang: $totalSaldoSimpananUtang, totalSaldoSimpananPokok: $totalSaldoSimpananPokok, totalUtang: $totalUtang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeUserDataResponse &&
            const DeepCollectionEquality()
                .equals(other.contribution, contribution) &&
            const DeepCollectionEquality().equals(
                other.totalSaldoSimpananUtang, totalSaldoSimpananUtang) &&
            const DeepCollectionEquality().equals(
                other.totalSaldoSimpananPokok, totalSaldoSimpananPokok) &&
            const DeepCollectionEquality()
                .equals(other.totalUtang, totalUtang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(contribution),
      const DeepCollectionEquality().hash(totalSaldoSimpananUtang),
      const DeepCollectionEquality().hash(totalSaldoSimpananPokok),
      const DeepCollectionEquality().hash(totalUtang));

  @JsonKey(ignore: true)
  @override
  _$$_HomeUserDataResponseCopyWith<_$_HomeUserDataResponse> get copyWith =>
      __$$_HomeUserDataResponseCopyWithImpl<_$_HomeUserDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeUserDataResponseToJson(
      this,
    );
  }
}

abstract class _HomeUserDataResponse extends HomeUserDataResponse {
  const factory _HomeUserDataResponse(
      {@JsonKey(name: 'contribution')
          required final ContributionResponse contribution,
      @JsonKey(name: 'total_saldo_simpanan_utang')
          required final int totalSaldoSimpananUtang,
      @JsonKey(name: 'total_saldo_simpanan_pokok')
          required final int? totalSaldoSimpananPokok,
      @JsonKey(name: 'total_utang')
          required final int totalUtang}) = _$_HomeUserDataResponse;
  const _HomeUserDataResponse._() : super._();

  factory _HomeUserDataResponse.fromJson(Map<String, dynamic> json) =
      _$_HomeUserDataResponse.fromJson;

  @override
  @JsonKey(name: 'contribution')
  ContributionResponse get contribution;
  @override
  @JsonKey(name: 'total_saldo_simpanan_utang')
  int get totalSaldoSimpananUtang;
  @override
  @JsonKey(name: 'total_saldo_simpanan_pokok')
  int? get totalSaldoSimpananPokok;
  @override
  @JsonKey(name: 'total_utang')
  int get totalUtang;
  @override
  @JsonKey(ignore: true)
  _$$_HomeUserDataResponseCopyWith<_$_HomeUserDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
