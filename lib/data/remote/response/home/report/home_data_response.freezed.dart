// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeDataResponse _$HomeDataResponseFromJson(Map<String, dynamic> json) {
  return _HomeDataResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeDataResponse {
  @JsonKey(name: 'produk_cepat_terjual')
  List<TransactionResponse>? get produkCepatTerjual =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'produk_lama_terjual')
  List<TransactionResponse>? get produkLamaTerjual =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_saldo_simpanan_utang')
  double? get totalSaldoSimpananUtang => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_utang')
  double? get totalUtang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDataResponseCopyWith<HomeDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataResponseCopyWith<$Res> {
  factory $HomeDataResponseCopyWith(
          HomeDataResponse value, $Res Function(HomeDataResponse) then) =
      _$HomeDataResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'produk_cepat_terjual')
          List<TransactionResponse>? produkCepatTerjual,
      @JsonKey(name: 'produk_lama_terjual')
          List<TransactionResponse>? produkLamaTerjual,
      @JsonKey(name: 'total_saldo_simpanan_utang')
          double? totalSaldoSimpananUtang,
      @JsonKey(name: 'total_utang')
          double? totalUtang});
}

/// @nodoc
class _$HomeDataResponseCopyWithImpl<$Res>
    implements $HomeDataResponseCopyWith<$Res> {
  _$HomeDataResponseCopyWithImpl(this._value, this._then);

  final HomeDataResponse _value;
  // ignore: unused_field
  final $Res Function(HomeDataResponse) _then;

  @override
  $Res call({
    Object? produkCepatTerjual = freezed,
    Object? produkLamaTerjual = freezed,
    Object? totalSaldoSimpananUtang = freezed,
    Object? totalUtang = freezed,
  }) {
    return _then(_value.copyWith(
      produkCepatTerjual: produkCepatTerjual == freezed
          ? _value.produkCepatTerjual
          : produkCepatTerjual // ignore: cast_nullable_to_non_nullable
              as List<TransactionResponse>?,
      produkLamaTerjual: produkLamaTerjual == freezed
          ? _value.produkLamaTerjual
          : produkLamaTerjual // ignore: cast_nullable_to_non_nullable
              as List<TransactionResponse>?,
      totalSaldoSimpananUtang: totalSaldoSimpananUtang == freezed
          ? _value.totalSaldoSimpananUtang
          : totalSaldoSimpananUtang // ignore: cast_nullable_to_non_nullable
              as double?,
      totalUtang: totalUtang == freezed
          ? _value.totalUtang
          : totalUtang // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeDataResponseCopyWith<$Res>
    implements $HomeDataResponseCopyWith<$Res> {
  factory _$$_HomeDataResponseCopyWith(
          _$_HomeDataResponse value, $Res Function(_$_HomeDataResponse) then) =
      __$$_HomeDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'produk_cepat_terjual')
          List<TransactionResponse>? produkCepatTerjual,
      @JsonKey(name: 'produk_lama_terjual')
          List<TransactionResponse>? produkLamaTerjual,
      @JsonKey(name: 'total_saldo_simpanan_utang')
          double? totalSaldoSimpananUtang,
      @JsonKey(name: 'total_utang')
          double? totalUtang});
}

/// @nodoc
class __$$_HomeDataResponseCopyWithImpl<$Res>
    extends _$HomeDataResponseCopyWithImpl<$Res>
    implements _$$_HomeDataResponseCopyWith<$Res> {
  __$$_HomeDataResponseCopyWithImpl(
      _$_HomeDataResponse _value, $Res Function(_$_HomeDataResponse) _then)
      : super(_value, (v) => _then(v as _$_HomeDataResponse));

  @override
  _$_HomeDataResponse get _value => super._value as _$_HomeDataResponse;

  @override
  $Res call({
    Object? produkCepatTerjual = freezed,
    Object? produkLamaTerjual = freezed,
    Object? totalSaldoSimpananUtang = freezed,
    Object? totalUtang = freezed,
  }) {
    return _then(_$_HomeDataResponse(
      produkCepatTerjual: produkCepatTerjual == freezed
          ? _value._produkCepatTerjual
          : produkCepatTerjual // ignore: cast_nullable_to_non_nullable
              as List<TransactionResponse>?,
      produkLamaTerjual: produkLamaTerjual == freezed
          ? _value._produkLamaTerjual
          : produkLamaTerjual // ignore: cast_nullable_to_non_nullable
              as List<TransactionResponse>?,
      totalSaldoSimpananUtang: totalSaldoSimpananUtang == freezed
          ? _value.totalSaldoSimpananUtang
          : totalSaldoSimpananUtang // ignore: cast_nullable_to_non_nullable
              as double?,
      totalUtang: totalUtang == freezed
          ? _value.totalUtang
          : totalUtang // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeDataResponse extends _HomeDataResponse {
  const _$_HomeDataResponse(
      {@JsonKey(name: 'produk_cepat_terjual')
          required final List<TransactionResponse>? produkCepatTerjual,
      @JsonKey(name: 'produk_lama_terjual')
          required final List<TransactionResponse>? produkLamaTerjual,
      @JsonKey(name: 'total_saldo_simpanan_utang')
          required this.totalSaldoSimpananUtang,
      @JsonKey(name: 'total_utang')
          required this.totalUtang})
      : _produkCepatTerjual = produkCepatTerjual,
        _produkLamaTerjual = produkLamaTerjual,
        super._();

  factory _$_HomeDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HomeDataResponseFromJson(json);

  final List<TransactionResponse>? _produkCepatTerjual;
  @override
  @JsonKey(name: 'produk_cepat_terjual')
  List<TransactionResponse>? get produkCepatTerjual {
    final value = _produkCepatTerjual;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TransactionResponse>? _produkLamaTerjual;
  @override
  @JsonKey(name: 'produk_lama_terjual')
  List<TransactionResponse>? get produkLamaTerjual {
    final value = _produkLamaTerjual;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_saldo_simpanan_utang')
  final double? totalSaldoSimpananUtang;
  @override
  @JsonKey(name: 'total_utang')
  final double? totalUtang;

  @override
  String toString() {
    return 'HomeDataResponse(produkCepatTerjual: $produkCepatTerjual, produkLamaTerjual: $produkLamaTerjual, totalSaldoSimpananUtang: $totalSaldoSimpananUtang, totalUtang: $totalUtang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeDataResponse &&
            const DeepCollectionEquality()
                .equals(other._produkCepatTerjual, _produkCepatTerjual) &&
            const DeepCollectionEquality()
                .equals(other._produkLamaTerjual, _produkLamaTerjual) &&
            const DeepCollectionEquality().equals(
                other.totalSaldoSimpananUtang, totalSaldoSimpananUtang) &&
            const DeepCollectionEquality()
                .equals(other.totalUtang, totalUtang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_produkCepatTerjual),
      const DeepCollectionEquality().hash(_produkLamaTerjual),
      const DeepCollectionEquality().hash(totalSaldoSimpananUtang),
      const DeepCollectionEquality().hash(totalUtang));

  @JsonKey(ignore: true)
  @override
  _$$_HomeDataResponseCopyWith<_$_HomeDataResponse> get copyWith =>
      __$$_HomeDataResponseCopyWithImpl<_$_HomeDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeDataResponseToJson(
      this,
    );
  }
}

abstract class _HomeDataResponse extends HomeDataResponse {
  const factory _HomeDataResponse(
      {@JsonKey(name: 'produk_cepat_terjual')
          required final List<TransactionResponse>? produkCepatTerjual,
      @JsonKey(name: 'produk_lama_terjual')
          required final List<TransactionResponse>? produkLamaTerjual,
      @JsonKey(name: 'total_saldo_simpanan_utang')
          required final double? totalSaldoSimpananUtang,
      @JsonKey(name: 'total_utang')
          required final double? totalUtang}) = _$_HomeDataResponse;
  const _HomeDataResponse._() : super._();

  factory _HomeDataResponse.fromJson(Map<String, dynamic> json) =
      _$_HomeDataResponse.fromJson;

  @override
  @JsonKey(name: 'produk_cepat_terjual')
  List<TransactionResponse>? get produkCepatTerjual;
  @override
  @JsonKey(name: 'produk_lama_terjual')
  List<TransactionResponse>? get produkLamaTerjual;
  @override
  @JsonKey(name: 'total_saldo_simpanan_utang')
  double? get totalSaldoSimpananUtang;
  @override
  @JsonKey(name: 'total_utang')
  double? get totalUtang;
  @override
  @JsonKey(ignore: true)
  _$$_HomeDataResponseCopyWith<_$_HomeDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
