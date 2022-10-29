import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/home/sales_report/sales_response.dart';
import 'package:koperasi/domain/entities/home/link.dart';

part 'sales_report_data.freezed.dart';

@freezed
class SalesReportData with _$SalesReportData {
  const factory SalesReportData({
    required int? currentPage,
    required List<SalesResponse>? data,
    required String? firstPageUrl,
    required int? from,
    required int? lastPage,
    required String? lastPageUrl,
    required List<Link>? links,
    required String? nextPageUrl,
    required String? path,
    required int? perPage,
    required String? prevPageUrl,
    required int? to,
    required int? total,
  }) = _SalesReportData;

  factory SalesReportData.initial() => const SalesReportData(
        currentPage: 0,
        data: [],
        firstPageUrl: null,
        from: 0,
        lastPage: 0,
        lastPageUrl: null,
        links: [],
        nextPageUrl: null,
        path: null,
        perPage: 0,
        prevPageUrl: null,
        to: 0,
        total: 0,
      );
}
