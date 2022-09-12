import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/sales_report.dart';

part 'history_data_admin.freezed.dart';

@freezed
class HistoryData with _$HistoryData {
  const factory HistoryData({
    required List<SalesReport>? thisWeekHistory,
    required List<SalesReport>? lastMonthHistory,
  }) = _HistoryData;

  factory HistoryData.initial() => const HistoryData(
        thisWeekHistory: [],
        lastMonthHistory: [],
      );
}
