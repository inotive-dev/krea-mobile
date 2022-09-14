import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/home/sales_report/sales_report_data_response.dart';
import 'package:koperasi/domain/entities/home/sales_reports.dart';

part 'sales_report_response.freezed.dart';
part 'sales_report_response.g.dart';

@freezed
class SalesReportResponse with _$SalesReportResponse {
  const SalesReportResponse._();

  const factory SalesReportResponse({
    required String? message,
    required int? statusCode,
    required SalesReportDataResponse? data,
  }) = _SalesReportResponse;

  factory SalesReportResponse.fromJson(Map<String, dynamic> json) => _$SalesReportResponseFromJson(json);

  SalesReports toDomain() => SalesReports(
        message: message,
        statusCode: statusCode,
        data: data?.toDomain(),
      );
}
