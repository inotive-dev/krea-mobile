import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/sales_report.dart';
import 'package:koperasi/domain/entities/home/transaction.dart';

part 'home_data.freezed.dart';

@freezed
class HomeData with _$HomeData {
  const factory HomeData({
    required List<Transaction>? produkCepatTerjual,
    required List<Transaction>? produkLamaTerjual,
    required List<SalesReport>? laporanPenjualan,
    required double? totalSaldoSimpananUtang,
    required double? totalUtang,
  }) = _HomeData;

  factory HomeData.initial() => const HomeData(
        produkCepatTerjual: [],
        produkLamaTerjual: [],
        laporanPenjualan: [],
        totalSaldoSimpananUtang: 0,
        totalUtang: 0,
      );
}
