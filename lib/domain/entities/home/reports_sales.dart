import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/link.dart';
import 'package:koperasi/domain/entities/home/sales_report.dart';

part 'reports_sales.freezed.dart';

@freezed
class ReportsSales with _$ReportsSales {
  const factory ReportsSales({
    required int? currentPage,
    required List<SalesReport>? data,
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
  }) = _ReportsSales;
}
