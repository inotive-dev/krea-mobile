// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_detail_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistoryDetailDataResponse _$$_HistoryDetailDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_HistoryDetailDataResponse(
      transaction:
          SalesResponse.fromJson(json['transaction'] as Map<String, dynamic>),
      transactionProduct: (json['transactionProduct'] as List<dynamic>)
          .map((e) => HistoryDetailDataProductResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HistoryDetailDataResponseToJson(
        _$_HistoryDetailDataResponse instance) =>
    <String, dynamic>{
      'transaction': instance.transaction,
      'transactionProduct': instance.transactionProduct,
    };
