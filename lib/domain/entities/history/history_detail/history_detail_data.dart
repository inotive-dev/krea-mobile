import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/history/history_detail/history_detail_data_product.dart';
import 'package:koperasi/domain/entities/home/sales_report.dart';

part 'history_detail_data.freezed.dart';

@freezed
class HistoryDetailData with _$HistoryDetailData {
  const factory HistoryDetailData({
    required SalesReport transaction,
    required List<HistoryDetailDataProduct> transactionProduct,
  }) = _HistoryDetailData;
}
