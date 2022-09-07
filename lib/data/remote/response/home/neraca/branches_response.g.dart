// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branches_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BranchesResponse _$$_BranchesResponseFromJson(Map<String, dynamic> json) =>
    _$_BranchesResponse(
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
      data: json['data'] == null
          ? null
          : BranchesDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BranchesResponseToJson(_$_BranchesResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'data': instance.data,
    };
