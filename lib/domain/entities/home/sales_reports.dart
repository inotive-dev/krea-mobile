import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/sales_report_data.dart';

part 'sales_reports.freezed.dart';

@freezed
class SalesReports with _$SalesReports {
  const factory SalesReports({
    required String? message,
    required int? statusCode,
    required SalesReportData? data,
  }) = _SalesReports;
}
