// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeResponse _$$_HomeResponseFromJson(Map<String, dynamic> json) =>
    _$_HomeResponse(
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
      data: json['data'] == null
          ? null
          : HomeDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HomeResponseToJson(_$_HomeResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'data': instance.data,
    };
