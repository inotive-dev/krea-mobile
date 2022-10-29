import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/local/entities/history/history_data_entity.dart';
import 'package:koperasi/data/remote/response/home/sales_report/sales_response.dart';

import 'package:koperasi/domain/entities/history/history_data_admin.dart';

part 'history_data_response.freezed.dart';
part 'history_data_response.g.dart';

@freezed
class HistoryDataResponse with _$HistoryDataResponse {
  const HistoryDataResponse._();

  const factory HistoryDataResponse({
    @JsonKey(name: 'this_week_history') required List<SalesResponse>? thisWeekHistory,
    @JsonKey(name: 'last_month_history') required List<SalesResponse>? lastMonthHistory,
  }) = _HistoryDataResponse;

  factory HistoryDataResponse.fromJson(Map<String, dynamic> json) => _$HistoryDataResponseFromJson(json);

  HistoryData toDomain() => HistoryData(
        thisWeekHistory: thisWeekHistory?.map((e) => e).toList(),
        lastMonthHistory: lastMonthHistory?.map((e) => e).toList(),
      );

  HistoryDataEntity toEntity() => HistoryDataEntity(
        thisWeekHistory: thisWeekHistory?.map((e) => e.toEntity()).toList(),
        lastMonthHistory: lastMonthHistory?.map((e) => e.toEntity()).toList(),
      );
}
