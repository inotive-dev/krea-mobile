import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/history/history_detail/history_detail_data_product_response.dart';
import 'package:koperasi/data/remote/response/home/sales_report/sales_response.dart';
import 'package:koperasi/domain/entities/history/history_detail/history_detail_data.dart';

part 'history_detail_data_response.freezed.dart';
part 'history_detail_data_response.g.dart';

@freezed
class HistoryDetailDataResponse with _$HistoryDetailDataResponse {
  const HistoryDetailDataResponse._();

  const factory HistoryDetailDataResponse({
    required SalesResponse transaction,
    required List<HistoryDetailDataProductResponse> transactionProduct,
  }) = _HistoryDetailDataResponse;

  factory HistoryDetailDataResponse.fromJson(Map<String, dynamic> json) => _$HistoryDetailDataResponseFromJson(json);

  HistoryDetailData toDomain() => HistoryDetailData(
        transaction: transaction.toDomain(),
        transactionProduct: transactionProduct.map((e) => e.toDomain()).toList(),
      );
}
