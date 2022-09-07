// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perubahan_modal_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PerubahanModalResponse _$$_PerubahanModalResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PerubahanModalResponse(
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
      data: json['data'] == null
          ? null
          : PerubahanModalDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PerubahanModalResponseToJson(
        _$_PerubahanModalResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'data': instance.data,
    };
