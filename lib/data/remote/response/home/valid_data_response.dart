import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/validate_data/valid_data.dart';

part 'valid_data_response.freezed.dart';
part 'valid_data_response.g.dart';

@freezed
class ValidDataResponse with _$ValidDataResponse {
  const ValidDataResponse._();

  const factory ValidDataResponse({
    @JsonKey(name: 'newest_saldo_simpanan_wajib_all')
        required List<Map<String, dynamic>>? newestTotalSaldoSimpananWajibAll,
    @JsonKey(name: 'newest_all_debt') required List<Map<String, dynamic>>? newestAllDebt,
    @JsonKey(name: 'newest_total_saldo_simpanan_wajib_sudah_bayar')
        required int? newestTotalSaldoSimpananWajibSudahBayar,
    @JsonKey(name: 'newest_total_saldo_simpanan_pokok_sudah_bayar')
        required int? newestTotalSaldoSimpananPokokSudahBayar,
    @JsonKey(name: 'newest_total_saldo_simpanan_utang') required int? newestTotalSaldoSimpananUtang,
    @JsonKey(name: 'newest_total_saldo_utang') required int? newestTotalSaldoUtang,
    @JsonKey(name: 'newest_this_week_history') required List<Map<String, dynamic>>? newestThisWeekHistory,
    @JsonKey(name: 'newest_last_month_history') required List<Map<String, dynamic>>? newestLastMonthHistory,
  }) = _ValidDataResponse;

  // factory ValidDataResponse.fromJson(Map<String, dynamic> json) {
  //   if (json['newest_total_saldo_utang'] == null) {
  //     json['newest_total_saldo_utang'] = '0';
  //   } else {
  //     json['newest_total_saldo_utang'] = "${json['newest_total_saldo_utang']}";
  //   }
  //   return _$ValidDataResponseFromJson(json);
  // }

  factory ValidDataResponse.fromJson(Map<String, dynamic> json) => _$ValidDataResponseFromJson(json);

  ValidData toDomain() => ValidData(
        newestTotalSaldoSimpananWajibAll: newestTotalSaldoSimpananWajibAll ?? [],
        newestAllDebt: newestAllDebt ?? [],
        newestTotalSaldoSimpananWajibSudahBayar: newestTotalSaldoSimpananWajibSudahBayar ?? 0,
        newestTotalSaldoSimpananPokokSudahBayar: newestTotalSaldoSimpananPokokSudahBayar ?? 0,
        newestTotalSaldoSimpananUtang: newestTotalSaldoSimpananUtang ?? 0,
        newestTotalSaldoUtang: newestTotalSaldoUtang ?? 0,
        newestThisWeekHistory: newestThisWeekHistory ?? [],
        newestLastMonthHistory: newestLastMonthHistory ?? [],
      );
}
