import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_detail_data_product.freezed.dart';

@freezed
class HistoryDetailDataProduct with _$HistoryDetailDataProduct {
  const factory HistoryDetailDataProduct({
    required int? subtotal,
    required int? id,
    required String? name,
    required String? code,
    required String? thumbnail,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _HistoryDetailDataProduct;
}
