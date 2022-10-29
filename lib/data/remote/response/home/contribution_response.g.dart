// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contribution_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContributionResponse _$$_ContributionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ContributionResponse(
      contributionWajib: json['contribution_wajib'] as int,
      contributionPokok: json['contribution_pokok'] as int,
      contributionSukarela: json['contribution_sukarela'] as int,
    );

Map<String, dynamic> _$$_ContributionResponseToJson(
        _$_ContributionResponse instance) =>
    <String, dynamic>{
      'contribution_wajib': instance.contributionWajib,
      'contribution_pokok': instance.contributionPokok,
      'contribution_sukarela': instance.contributionSukarela,
    };
