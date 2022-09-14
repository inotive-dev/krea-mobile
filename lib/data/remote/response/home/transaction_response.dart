import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/home/product_response.dart';
import 'package:koperasi/domain/entities/home/transaction.dart';

part 'transaction_response.freezed.dart';
part 'transaction_response.g.dart';

@freezed
class TransactionResponse with _$TransactionResponse {
  const TransactionResponse._();

  const factory TransactionResponse({
    required int? id,
    @JsonKey(name: 'transaction_id') required int? transactionId,
    @JsonKey(name: 'product_id') required int? productId,
    @JsonKey(name: 'consignment_product_id') required int? consignmentProdutId,
    @JsonKey(name: 'sell_price') required double? sellPrice,
    @JsonKey(name: 'buy_price') required double? buyPrice,
    required int? qty,
    required double? discount,
    required double? ppn,
    required double? subtotal,
    @JsonKey(name: 'is_consignment_paid') required double? isConsignmentPaid,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
    @JsonKey(name: 'total_quantity') required String? totalQty,
    required ProductResponse? product,
  }) = _TransactionResponse;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) => _$TransactionResponseFromJson(json);

  Transaction toDomain() => Transaction(
        id: id,
        transactionId: transactionId,
        productId: productId,
        consignmentProdutId: consignmentProdutId,
        sellPrice: sellPrice,
        buyPrice: buyPrice,
        qty: qty,
        discount: discount,
        ppn: ppn,
        subtotal: subtotal,
        isConsignmentPaid: isConsignmentPaid,
        createdAt: createdAt,
        updatedAt: updatedAt,
        totalQty: totalQty,
        product: product?.toDomain(),
      );
}
