import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/history/history_detail/history_detail_data_product.dart';

part 'history_detail_data_product_response.freezed.dart';
part 'history_detail_data_product_response.g.dart';

@freezed
class HistoryDetailDataProductResponse with _$HistoryDetailDataProductResponse {
  const HistoryDetailDataProductResponse._();

  const factory HistoryDetailDataProductResponse({
    required int? id,
    required int? subtotal,
    required String? name,
    required String? code,
    required String? thumbnail,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
  }) = _HistoryDetailDataProductResponse;

  factory HistoryDetailDataProductResponse.fromJson(Map<String, dynamic> json) =>
      _$HistoryDetailDataProductResponseFromJson(json);

  HistoryDetailDataProduct toDomain() => HistoryDetailDataProduct(
        id: id,
        subtotal: subtotal,
        name: name,
        code: code,
        thumbnail: thumbnail,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
