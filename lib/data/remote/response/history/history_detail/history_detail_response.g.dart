// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistoryDetailResponse _$$_HistoryDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_HistoryDetailResponse(
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              HistoryDetailDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HistoryDetailResponseToJson(
        _$_HistoryDetailResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'data': instance.data,
    };
