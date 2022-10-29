// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ValidateDataResponse _$$_ValidateDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ValidateDataResponse(
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
      data: json['data'] == null
          ? null
          : ValidDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ValidateDataResponseToJson(
        _$_ValidateDataResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'data': instance.data,
    };
