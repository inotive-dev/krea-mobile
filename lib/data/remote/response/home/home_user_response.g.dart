// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeUserResponse _$$_HomeUserResponseFromJson(Map<String, dynamic> json) =>
    _$_HomeUserResponse(
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
      data: json['data'] == null
          ? null
          : HomeUserDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HomeUserResponseToJson(_$_HomeUserResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'data': instance.data,
    };
