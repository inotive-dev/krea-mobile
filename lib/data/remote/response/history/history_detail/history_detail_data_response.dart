import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/history/history_detail/history_detail_data.dart';

part 'history_detail_data_response.freezed.dart';
part 'history_detail_data_response.g.dart';

@freezed
class HistoryDetailDataResponse with _$HistoryDetailDataResponse {
  const HistoryDetailDataResponse._();

  const factory HistoryDetailDataResponse({
    required int? id,
    required int? subtotal,
    required String? name,
    required String? code,
    required String? thumbnail,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
  }) = _HistoryDetailDataResponse;

  factory HistoryDetailDataResponse.fromJson(Map<String, dynamic> json) => _$HistoryDetailDataResponseFromJson(json);

  HistoryDetailData toDomain() => HistoryDetailData(
        id: id,
        subtotal: subtotal,
        name: name,
        code: code,
        thumbnail: thumbnail,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
