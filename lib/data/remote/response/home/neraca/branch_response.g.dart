// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BranchResponse _$$_BranchResponseFromJson(Map<String, dynamic> json) =>
    _$_BranchResponse(
      martName: json['mart_name'] as String?,
      total: (json['total'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_BranchResponseToJson(_$_BranchResponse instance) =>
    <String, dynamic>{
      'mart_name': instance.martName,
      'total': instance.total,
    };
