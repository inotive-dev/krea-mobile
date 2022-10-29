import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/local/entities/history/sales_report_entity.dart';
import 'package:koperasi/data/remote/response/login/user_response.dart';
import 'package:koperasi/domain/entities/history/mart.dart';

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
    required UserResponse? user,
    required Mart? mart,
  }) = _SalesReport;

  // SalesReportEntity toEntity() => SalesReportEntity(
  //       id: id,
  //       martId: martId,
  //       userId: userId,
  //       total: total,
  //       totalDiscount: totalDiscount,
  //       totalPpn: totalPpn,
  //       hpp: hpp,
  //       grandTotal: grandTotal,
  //       paymentMethod: paymentMethod,
  //       bankName: bankName,
  //       totalPayment: totalPayment,
  //       totalChange: totalChange,
  //       createdAt: createdAt,
  //       updatedAt: updatedAt,
  //       updatedAtMobile: updatedAtMobile,
  //       isMatched: isMatched,
  //       user: user?.toEntity(),
  //       mart: mart?.toEntity(),
  //     );
}
