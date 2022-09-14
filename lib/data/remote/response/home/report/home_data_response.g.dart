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
      totalSaldoSimpananUtang:
          (json['total_saldo_simpanan_utang'] as num?)?.toDouble(),
      totalUtang: (json['total_utang'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_HomeDataResponseToJson(_$_HomeDataResponse instance) =>
    <String, dynamic>{
      'produk_cepat_terjual': instance.produkCepatTerjual,
      'produk_lama_terjual': instance.produkLamaTerjual,
      'total_saldo_simpanan_utang': instance.totalSaldoSimpananUtang,
      'total_utang': instance.totalUtang,
    };
