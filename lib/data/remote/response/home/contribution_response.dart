import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/contribution.dart';

part 'contribution_response.freezed.dart';
part 'contribution_response.g.dart';

@freezed
class ContributionResponse with _$ContributionResponse {
  const ContributionResponse._();

  const factory ContributionResponse({
    @JsonKey(name: 'contribution_wajib', fromJson: _toString, toJson: _toInt) required String contributionWajib,
    @JsonKey(name: 'contribution_pokok') required String contributionPokok,
    @JsonKey(name: 'contribution_sukarela') required double contributionSukarela,
  }) = _ContributionResponse;

  factory ContributionResponse.fromJson(Map<String, dynamic> json) => _$ContributionResponseFromJson(json);

  Contribution toDomain() => Contribution(
        contributionWajib: contributionWajib,
        contributionPokok: contributionPokok,
        contributionSukarela: contributionSukarela,
      );
}

String _toString(int value) {
  return value.toString();
}

int _toInt(String value) => int.parse(value);
