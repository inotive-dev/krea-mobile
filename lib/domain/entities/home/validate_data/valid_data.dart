import 'package:freezed_annotation/freezed_annotation.dart';

part 'valid_data.freezed.dart';

@freezed
class ValidData with _$ValidData {
  const factory ValidData({
    required List<Map<String, dynamic>> newestTotalSaldoSimpananWajibAll,
    required List<Map<String, dynamic>> newestAllDebt,
    required int newestTotalSaldoSimpananWajibSudahBayar,
    required int newestTotalSaldoSimpananPokokSudahBayar,
    required int newestTotalSaldoSimpananUtang,
    required int newestTotalSaldoUtang,
    required List<Map<String, dynamic>> newestThisWeekHistory,
    required List<Map<String, dynamic>> newestLastMonthHistory,
  }) = _ValidData;

  factory ValidData.initial() => const ValidData(
        newestTotalSaldoSimpananWajibAll: [],
        newestAllDebt: [],
        newestTotalSaldoSimpananWajibSudahBayar: 0,
        newestTotalSaldoSimpananPokokSudahBayar: 0,
        newestTotalSaldoSimpananUtang: 0,
        newestTotalSaldoUtang: 0,
        newestThisWeekHistory: [],
        newestLastMonthHistory: [],
      );
}
