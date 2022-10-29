import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/history/history_detail/history_detail_data.dart';

part 'history_detail.freezed.dart';

@freezed
class HistoryDetail with _$HistoryDetail {
  const factory HistoryDetail({
    required String? message,
    required int? statusCode,
    required HistoryDetailData data,
  }) = _HistoryDetail;
}
