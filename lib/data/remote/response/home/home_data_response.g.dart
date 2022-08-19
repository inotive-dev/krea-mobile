// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeDataResponse _$$_HomeDataResponseFromJson(Map<String, dynamic> json) =>
    _$_HomeDataResponse(
      produkCepatTerjual: (json['produk_cepat_terjual'] as List<dynamic>?)
          ?.map((e) => TransactionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      produkLamaTerjual: (json['produk_lama_terjual'] as List<dynamic>?)
          ?.map((e) => TransactionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      laporanPenjualan: (json['laporan_penjualan'] as List<dynamic>?)
          ?.map((e) => SalesReportResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HomeDataResponseToJson(_$_HomeDataResponse instance) =>
    <String, dynamic>{
      'produk_cepat_terjual': instance.produkCepatTerjual,
      'produk_lama_terjual': instance.produkLamaTerjual,
      'laporan_penjualan': instance.laporanPenjualan,
    };
