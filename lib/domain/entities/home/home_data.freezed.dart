// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeDataTearOff {
  const _$HomeDataTearOff();

  _HomeData call(
      {required List<Transaction>? produkCepatTerjual,
      required List<Transaction>? produkLamaTerjual,
      required List<SalesReport>? laporanPenjualan}) {
    return _HomeData(
      produkCepatTerjual: produkCepatTerjual,
      produkLamaTerjual: produkLamaTerjual,
      laporanPenjualan: laporanPenjualan,
    );
  }
}

/// @nodoc
const $HomeData = _$HomeDataTearOff();

/// @nodoc
mixin _$HomeData {
  List<Transaction>? get produkCepatTerjual =>
      throw _privateConstructorUsedError;
  List<Transaction>? get produkLamaTerjual =>
      throw _privateConstructorUsedError;
  List<SalesReport>? get laporanPenjualan => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeDataCopyWith<HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataCopyWith<$Res> {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) then) =
      _$HomeDataCopyWithImpl<$Res>;
  $Res call(
      {List<Transaction>? produkCepatTerjual,
      List<Transaction>? produkLamaTerjual,
      List<SalesReport>? laporanPenjualan});
}

/// @nodoc
class _$HomeDataCopyWithImpl<$Res> implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._value, this._then);

  final HomeData _value;
  // ignore: unused_field
  final $Res Function(HomeData) _then;

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
              as List<Transaction>?,
      produkLamaTerjual: produkLamaTerjual == freezed
          ? _value.produkLamaTerjual
          : produkLamaTerjual // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
      laporanPenjualan: laporanPenjualan == freezed
          ? _value.laporanPenjualan
          : laporanPenjualan // ignore: cast_nullable_to_non_nullable
              as List<SalesReport>?,
    ));
  }
}

/// @nodoc
abstract class _$HomeDataCopyWith<$Res> implements $HomeDataCopyWith<$Res> {
  factory _$HomeDataCopyWith(_HomeData value, $Res Function(_HomeData) then) =
      __$HomeDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Transaction>? produkCepatTerjual,
      List<Transaction>? produkLamaTerjual,
      List<SalesReport>? laporanPenjualan});
}

/// @nodoc
class __$HomeDataCopyWithImpl<$Res> extends _$HomeDataCopyWithImpl<$Res>
    implements _$HomeDataCopyWith<$Res> {
  __$HomeDataCopyWithImpl(_HomeData _value, $Res Function(_HomeData) _then)
      : super(_value, (v) => _then(v as _HomeData));

  @override
  _HomeData get _value => super._value as _HomeData;

  @override
  $Res call({
    Object? produkCepatTerjual = freezed,
    Object? produkLamaTerjual = freezed,
    Object? laporanPenjualan = freezed,
  }) {
    return _then(_HomeData(
      produkCepatTerjual: produkCepatTerjual == freezed
          ? _value.produkCepatTerjual
          : produkCepatTerjual // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
      produkLamaTerjual: produkLamaTerjual == freezed
          ? _value.produkLamaTerjual
          : produkLamaTerjual // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
      laporanPenjualan: laporanPenjualan == freezed
          ? _value.laporanPenjualan
          : laporanPenjualan // ignore: cast_nullable_to_non_nullable
              as List<SalesReport>?,
    ));
  }
}

/// @nodoc

class _$_HomeData implements _HomeData {
  const _$_HomeData(
      {required this.produkCepatTerjual,
      required this.produkLamaTerjual,
      required this.laporanPenjualan});

  @override
  final List<Transaction>? produkCepatTerjual;
  @override
  final List<Transaction>? produkLamaTerjual;
  @override
  final List<SalesReport>? laporanPenjualan;

  @override
  String toString() {
    return 'HomeData(produkCepatTerjual: $produkCepatTerjual, produkLamaTerjual: $produkLamaTerjual, laporanPenjualan: $laporanPenjualan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeData &&
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
  _$HomeDataCopyWith<_HomeData> get copyWith =>
      __$HomeDataCopyWithImpl<_HomeData>(this, _$identity);
}

abstract class _HomeData implements HomeData {
  const factory _HomeData(
      {required List<Transaction>? produkCepatTerjual,
      required List<Transaction>? produkLamaTerjual,
      required List<SalesReport>? laporanPenjualan}) = _$_HomeData;

  @override
  List<Transaction>? get produkCepatTerjual;
  @override
  List<Transaction>? get produkLamaTerjual;
  @override
  List<SalesReport>? get laporanPenjualan;
  @override
  @JsonKey(ignore: true)
  _$HomeDataCopyWith<_HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}
