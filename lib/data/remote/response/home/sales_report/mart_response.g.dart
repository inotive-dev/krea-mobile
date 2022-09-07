// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MartResponse _$$_MartResponseFromJson(Map<String, dynamic> json) =>
    _$_MartResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_MartResponseToJson(_$_MartResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
