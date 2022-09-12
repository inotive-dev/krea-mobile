import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_detail_data.freezed.dart';

@freezed
class HistoryDetailData with _$HistoryDetailData {
  const factory HistoryDetailData({
    required int? subtotal,
    required int? id,
    required String? name,
    required String? code,
    required String? thumbnail,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _HistoryDetailData;
}
