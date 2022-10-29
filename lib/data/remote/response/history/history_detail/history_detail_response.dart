import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/history/history_detail/history_detail.dart';

import 'history_detail_data_response.dart';

part 'history_detail_response.freezed.dart';
part 'history_detail_response.g.dart';

@freezed
class HistoryDetailResponse with _$HistoryDetailResponse {
  const HistoryDetailResponse._();

  const factory HistoryDetailResponse({
    required String? message,
    required int? statusCode,
    required HistoryDetailDataResponse data,
  }) = _HistoryDetailResponse;

  factory HistoryDetailResponse.fromJson(Map<String, dynamic> json) => _$HistoryDetailResponseFromJson(json);

  HistoryDetail toDomain() => HistoryDetail(
        message: message,
        statusCode: statusCode,
        data: data.toDomain(),
      );
}
