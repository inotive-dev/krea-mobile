import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/home/sales_report/sales_response.dart';
import 'package:koperasi/domain/entities/home/sales_report.dart';

part 'history_data_admin.freezed.dart';

@freezed
class HistoryData with _$HistoryData {
  const factory HistoryData({
    required List<SalesResponse>? thisWeekHistory,
    required List<SalesResponse>? lastMonthHistory,
  }) = _HistoryData;

  factory HistoryData.initial() => const HistoryData(
        thisWeekHistory: [],
        lastMonthHistory: [],
      );
}
