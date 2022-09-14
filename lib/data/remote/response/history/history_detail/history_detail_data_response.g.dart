// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_detail_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistoryDetailDataResponse _$$_HistoryDetailDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_HistoryDetailDataResponse(
      id: json['id'] as int?,
      subtotal: json['subtotal'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      thumbnail: json['thumbnail'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_HistoryDetailDataResponseToJson(
        _$_HistoryDetailDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subtotal': instance.subtotal,
      'name': instance.name,
      'code': instance.code,
      'thumbnail': instance.thumbnail,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
