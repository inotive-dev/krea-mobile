import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int? id,
    required String? name,
    required String? code,
    required String? thumbnail,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _Product;
}
