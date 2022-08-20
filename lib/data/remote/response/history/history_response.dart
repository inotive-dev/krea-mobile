import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/history_entities/history.dart';

import 'history_data_response.dart';

part 'history_response.freezed.dart';
part 'history_response.g.dart';

@freezed
class HistoryResponse with _$HistoryResponse {
  const HistoryResponse._();

  const factory HistoryResponse({
    required String? message,
    required int? statusCode,
    required HistoryDataResponse? data,
  }) = _HistoryResponse;

  factory HistoryResponse.fromJson(Map<String, dynamic> json) => _$HistoryResponseFromJson(json);

  History toDomain() => History(
        message: message,
        statusCode: statusCode,
        data: data?.toDomain(),
      );
}
