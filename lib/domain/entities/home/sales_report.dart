import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/history_entities/mart.dart';
import 'package:koperasi/domain/entities/login/user.dart';

part 'sales_report.freezed.dart';

@freezed
class SalesReport with _$SalesReport {
  const factory SalesReport({
    required int? id,
    required int? martId,
    required int? userId,
    required double? total,
    required double? totalDiscount,
    required double? totalPpn,
    required double? hpp,
    required double? grandTotal,
    required String? paymentMethod,
    required String? bankName,
    required double? totalPayment,
    required double? totalChange,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    required DateTime? updatedAtMobile,
    required int? isMatched,
    required User? user,
    required Mart? mart,
  }) = _SalesReport;
}
