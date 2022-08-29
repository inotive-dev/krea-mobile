// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesReportResponse _$$_SalesReportResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SalesReportResponse(
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
      data: json['data'] == null
          ? null
          : SalesReportDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SalesReportResponseToJson(
        _$_SalesReportResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'data': instance.data,
    };
