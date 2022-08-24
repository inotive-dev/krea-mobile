import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/home/sales_report_response.dart';
import 'package:koperasi/data/remote/response/home/transaction_response.dart';
import 'package:koperasi/domain/entities/home/home_data.dart';

part 'home_data_response.freezed.dart';
part 'home_data_response.g.dart';

@freezed
class HomeDataResponse with _$HomeDataResponse {
  const HomeDataResponse._();

  const factory HomeDataResponse({
    @JsonKey(name: 'produk_cepat_terjual') required List<TransactionResponse>? produkCepatTerjual,
    @JsonKey(name: 'produk_lama_terjual') required List<TransactionResponse>? produkLamaTerjual,
    @JsonKey(name: 'laporan_penjualan') required List<SalesReportResponse>? laporanPenjualan,
    @JsonKey(name: 'total_saldo_simpanan_utang') required double? totalSaldoSimpananUtang,
    @JsonKey(name: 'total_utang') required double? totalUtang,
  }) = _HomeDataResponse;

  factory HomeDataResponse.fromJson(Map<String, dynamic> json) => _$HomeDataResponseFromJson(json);

  HomeData toDomain() => HomeData(
        produkCepatTerjual: produkCepatTerjual?.map((e) => e.toDomain()).toList(),
        produkLamaTerjual: produkLamaTerjual?.map((e) => e.toDomain()).toList(),
        laporanPenjualan: laporanPenjualan?.map((e) => e.toDomain()).toList(),
        totalSaldoSimpananUtang: totalSaldoSimpananUtang,
        totalUtang: totalUtang,
      );
}
