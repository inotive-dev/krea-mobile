// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'valid_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ValidDataResponse _$$_ValidDataResponseFromJson(Map<String, dynamic> json) =>
    _$_ValidDataResponse(
      newestTotalSaldoSimpananWajibAll:
          (json['newest_saldo_simpanan_wajib_all'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList(),
      newestAllDebt: (json['newest_all_debt'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      newestTotalSaldoSimpananWajibSudahBayar:
          json['newest_total_saldo_simpanan_wajib_sudah_bayar'] as int?,
      newestTotalSaldoSimpananPokokSudahBayar:
          json['newest_total_saldo_simpanan_pokok_sudah_bayar'] as int?,
      newestTotalSaldoSimpananUtang:
          json['newest_total_saldo_simpanan_utang'] as int?,
      newestTotalSaldoUtang: json['newest_total_saldo_utang'] as int?,
      newestThisWeekHistory:
          (json['newest_this_week_history'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList(),
      newestLastMonthHistory:
          (json['newest_last_month_history'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList(),
    );

Map<String, dynamic> _$$_ValidDataResponseToJson(
        _$_ValidDataResponse instance) =>
    <String, dynamic>{
      'newest_saldo_simpanan_wajib_all':
          instance.newestTotalSaldoSimpananWajibAll,
      'newest_all_debt': instance.newestAllDebt,
      'newest_total_saldo_simpanan_wajib_sudah_bayar':
          instance.newestTotalSaldoSimpananWajibSudahBayar,
      'newest_total_saldo_simpanan_pokok_sudah_bayar':
          instance.newestTotalSaldoSimpananPokokSudahBayar,
      'newest_total_saldo_simpanan_utang':
          instance.newestTotalSaldoSimpananUtang,
      'newest_total_saldo_utang': instance.newestTotalSaldoUtang,
      'newest_this_week_history': instance.newestThisWeekHistory,
      'newest_last_month_history': instance.newestLastMonthHistory,
    };
