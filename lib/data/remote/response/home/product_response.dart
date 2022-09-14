import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/product.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const ProductResponse._();

  const factory ProductResponse({
    required int? id,
    required int? subtotal,
    required String? name,
    required String? code,
    required String? thumbnail,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

  Product toDomain() => Product(
        id: id,
        subtotal: subtotal,
        name: name,
        code: code,
        thumbnail: thumbnail,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
