import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/home/sales_report/mart_response.dart';
import 'package:koperasi/data/remote/response/login/user_response.dart';
import 'package:koperasi/domain/entities/home/sales_report.dart';

part 'sales_response.freezed.dart';
part 'sales_response.g.dart';

@freezed
class SalesResponse with _$SalesResponse {
  const SalesResponse._();

  const factory SalesResponse({
    required int? id,
    @JsonKey(name: 'mart_id') required int? martId,
    @JsonKey(name: 'user_id') required int? userId,
    required double? total,
    @JsonKey(name: 'total_discount') required double? totalDiscount,
    @JsonKey(name: 'total_ppn') required double? totalPpn,
    required double? hpp,
    @JsonKey(name: 'grand_total') required double? grandTotal,
    @JsonKey(name: 'payment_method') required String? paymentMethod,
    @JsonKey(name: 'bank_name') required String? bankName,
    @JsonKey(name: 'total_payment') required double? totalPayment,
    @JsonKey(name: 'total_change') required double? totalChange,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
    @JsonKey(name: 'update_at_mobile') required DateTime? updatedAtMobile,
    @JsonKey(name: 'is_matched') required int? isMatched,
    required UserResponse? user,
    required MartResponse? mart,
  }) = _SalesResponse;

  factory SalesResponse.fromJson(Map<String, dynamic> json) => _$SalesResponseFromJson(json);

  SalesReport toDomain() => SalesReport(
        id: id,
        martId: martId,
        userId: userId,
        total: total,
        totalDiscount: totalDiscount,
        totalPpn: totalPpn,
        hpp: hpp,
        grandTotal: grandTotal,
        paymentMethod: paymentMethod,
        bankName: bankName,
        totalPayment: totalPayment,
        totalChange: totalChange,
        createdAt: createdAt,
        updatedAt: updatedAt,
        updatedAtMobile: updatedAtMobile,
        isMatched: isMatched,
        user: user?.toDomain(),
        mart: mart?.toDomain(),
      );
}
