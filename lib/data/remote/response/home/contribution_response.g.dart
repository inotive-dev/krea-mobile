// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contribution_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContributionResponse _$$_ContributionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ContributionResponse(
      contributionWajib: json['contribution_wajib'] as String?,
      contributionPokok: json['contribution_pokok'] as String?,
      contributionSukarela: (json['contribution_sukarela'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ContributionResponseToJson(
        _$_ContributionResponse instance) =>
    <String, dynamic>{
      'contribution_wajib': instance.contributionWajib,
      'contribution_pokok': instance.contributionPokok,
      'contribution_sukarela': instance.contributionSukarela,
    };
