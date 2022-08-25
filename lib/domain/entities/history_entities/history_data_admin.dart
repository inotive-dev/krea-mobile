import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/sales_report.dart';

part 'history_data_admin.freezed.dart';

@freezed
class HistoryData with _$HistoryData {
  const factory HistoryData({
    required List<SalesReport>? thisWeekHistory,
    required List<SalesReport>? lastMonthHistory,
  }) = _HistoryData;

  factory HistoryData.initial() => HistoryData(
        thisWeekHistory: [
          SalesReport(
            id: 1,
            martId: 1,
            userId: 11,
            total: 50000,
            totalDiscount: 0,
            totalPpn: 0,
            hpp: 0,
            grandTotal: 50000,
            paymentMethod: 'tunai',
            bankName: 'Bank B',
            totalPayment: 50000,
            totalChange: 0,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
            updatedAtMobile: null,
            isMatched: null,
            user: null,
          ),
          SalesReport(
            id: 2,
            martId: 2,
            userId: 22,
            total: 50000,
            totalDiscount: 0,
            totalPpn: 0,
            hpp: 0,
            grandTotal: 80000,
            paymentMethod: 'tunai',
            bankName: 'Bank B',
            totalPayment: 50000,
            totalChange: 0,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
            updatedAtMobile: null,
            isMatched: null,
            user: null,
          ),
        ],
        lastMonthHistory: [
          SalesReport(
            id: 1,
            martId: 1,
            userId: 11,
            total: 50000,
            totalDiscount: 0,
            totalPpn: 0,
            hpp: 0,
            grandTotal: 150000,
            paymentMethod: 'tunai',
            bankName: 'Bank B',
            totalPayment: 50000,
            totalChange: 0,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
            updatedAtMobile: null,
            isMatched: null,
            user: null,
          ),
          SalesReport(
            id: 2,
            martId: 2,
            userId: 22,
            total: 50000,
            totalDiscount: 0,
            totalPpn: 0,
            hpp: 0,
            grandTotal: 60000,
            paymentMethod: 'tunai',
            bankName: 'Bank B',
            totalPayment: 50000,
            totalChange: 0,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
            updatedAtMobile: null,
            isMatched: null,
            user: null,
          ),
        ],
      );
}
