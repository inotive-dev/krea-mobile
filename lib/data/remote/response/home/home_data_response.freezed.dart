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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeDataResponse _$HomeDataResponseFromJson(Map<String, dynamic> json) {
  return _HomeDataResponse.fromJson(json);
}

/// @nodoc
class _$HomeDataResponseTearOff {
  const _$HomeDataResponseTearOff();

  _HomeDataResponse call(
      {@JsonKey(name: 'produk_cepat_terjual')
          required List<TransactionResponse>? produkCepatTerjual,
      @JsonKey(name: 'produk_lama_terjual')
          required List<TransactionResponse>? produkLamaTerjual,
      @JsonKey(name: 'laporan_penjualan')
          required List<SalesReportResponse>? laporanPenjualan}) {
    return _HomeDataResponse(
      produkCepatTerjual: produkCepatTerjual,
      produkLamaTerjual: produkLamaTerjual,
      laporanPenjualan: laporanPenjualan,
    );
  }

  HomeDataResponse fromJson(Map<String, Object?> json) {
    return HomeDataResponse.fromJson(json);
  }
}

/// @nodoc
const $HomeDataResponse = _$HomeDataResponseTearOff();

/// @nodoc
mixin _$HomeDataResponse {
  @JsonKey(name: 'produk_cepat_terjual')
  List<TransactionResponse>? get produkCepatTerjual =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'produk_lama_terjual')
  List<TransactionResponse>? get produkLamaTerjual =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'laporan_penjualan')
  List<SalesReportResponse>? get laporanPenjualan =>
      throw _privateConstructorUsedError;

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
      @JsonKey(name: 'laporan_penjualan')
          List<SalesReportResponse>? laporanPenjualan});
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
    Object? laporanPenjualan = freezed,
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
      laporanPenjualan: laporanPenjualan == freezed
          ? _value.laporanPenjualan
          : laporanPenjualan // ignore: cast_nullable_to_non_nullable
              as List<SalesReportResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$HomeDataResponseCopyWith<$Res>
    implements $HomeDataResponseCopyWith<$Res> {
  factory _$HomeDataResponseCopyWith(
          _HomeDataResponse value, $Res Function(_HomeDataResponse) then) =
      __$HomeDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'produk_cepat_terjual')
          List<TransactionResponse>? produkCepatTerjual,
      @JsonKey(name: 'produk_lama_terjual')
          List<TransactionResponse>? produkLamaTerjual,
      @JsonKey(name: 'laporan_penjualan')
          List<SalesReportResponse>? laporanPenjualan});
}

/// @nodoc
class __$HomeDataResponseCopyWithImpl<$Res>
    extends _$HomeDataResponseCopyWithImpl<$Res>
    implements _$HomeDataResponseCopyWith<$Res> {
  __$HomeDataResponseCopyWithImpl(
      _HomeDataResponse _value, $Res Function(_HomeDataResponse) _then)
      : super(_value, (v) => _then(v as _HomeDataResponse));

  @override
  _HomeDataResponse get _value => super._value as _HomeDataResponse;

  @override
  $Res call({
    Object? produkCepatTerjual = freezed,
    Object? produkLamaTerjual = freezed,
    Object? laporanPenjualan = freezed,
  }) {
    return _then(_HomeDataResponse(
      produkCepatTerjual: produkCepatTerjual == freezed
          ? _value.produkCepatTerjual
          : produkCepatTerjual // ignore: cast_nullable_to_non_nullable
              as List<TransactionResponse>?,
      produkLamaTerjual: produkLamaTerjual == freezed
          ? _value.produkLamaTerjual
          : produkLamaTerjual // ignore: cast_nullable_to_non_nullable
              as List<TransactionResponse>?,
      laporanPenjualan: laporanPenjualan == freezed
          ? _value.laporanPenjualan
          : laporanPenjualan // ignore: cast_nullable_to_non_nullable
              as List<SalesReportResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeDataResponse extends _HomeDataResponse {
  const _$_HomeDataResponse(
      {@JsonKey(name: 'produk_cepat_terjual') required this.produkCepatTerjual,
      @JsonKey(name: 'produk_lama_terjual') required this.produkLamaTerjual,
      @JsonKey(name: 'laporan_penjualan') required this.laporanPenjualan})
      : super._();

  factory _$_HomeDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HomeDataResponseFromJson(json);

  @override
  @JsonKey(name: 'produk_cepat_terjual')
  final List<TransactionResponse>? produkCepatTerjual;
  @override
  @JsonKey(name: 'produk_lama_terjual')
  final List<TransactionResponse>? produkLamaTerjual;
  @override
  @JsonKey(name: 'laporan_penjualan')
  final List<SalesReportResponse>? laporanPenjualan;

  @override
  String toString() {
    return 'HomeDataResponse(produkCepatTerjual: $produkCepatTerjual, produkLamaTerjual: $produkLamaTerjual, laporanPenjualan: $laporanPenjualan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeDataResponse &&
            const DeepCollectionEquality()
                .equals(other.produkCepatTerjual, produkCepatTerjual) &&
            const DeepCollectionEquality()
                .equals(other.produkLamaTerjual, produkLamaTerjual) &&
            const DeepCollectionEquality()
                .equals(other.laporanPenjualan, laporanPenjualan));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(produkCepatTerjual),
      const DeepCollectionEquality().hash(produkLamaTerjual),
      const DeepCollectionEquality().hash(laporanPenjualan));

  @JsonKey(ignore: true)
  @override
  _$HomeDataResponseCopyWith<_HomeDataResponse> get copyWith =>
      __$HomeDataResponseCopyWithImpl<_HomeDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeDataResponseToJson(this);
  }
}

abstract class _HomeDataResponse extends HomeDataResponse {
  const factory _HomeDataResponse(
          {@JsonKey(name: 'produk_cepat_terjual')
              required List<TransactionResponse>? produkCepatTerjual,
          @JsonKey(name: 'produk_lama_terjual')
              required List<TransactionResponse>? produkLamaTerjual,
          @JsonKey(name: 'laporan_penjualan')
              required List<SalesReportResponse>? laporanPenjualan}) =
      _$_HomeDataResponse;
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
  @JsonKey(name: 'laporan_penjualan')
  List<SalesReportResponse>? get laporanPenjualan;
  @override
  @JsonKey(ignore: true)
  _$HomeDataResponseCopyWith<_HomeDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
