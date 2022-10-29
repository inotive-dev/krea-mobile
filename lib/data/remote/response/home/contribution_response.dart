import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/local/entities/home/user/contribution_entity.dart';
import 'package:koperasi/domain/entities/home/contribution.dart';

part 'contribution_response.freezed.dart';
part 'contribution_response.g.dart';

@freezed
class ContributionResponse with _$ContributionResponse {
  const ContributionResponse._();

  const factory ContributionResponse({
    @JsonKey(name: 'contribution_wajib') required int contributionWajib,
    @JsonKey(name: 'contribution_pokok') required int contributionPokok,
    @JsonKey(name: 'contribution_sukarela') required int contributionSukarela,
  }) = _ContributionResponse;

  factory ContributionResponse.fromJson(Map<String, dynamic> json) => _$ContributionResponseFromJson(json);

  Contribution toDomain() => Contribution(
        contributionWajib: contributionWajib,
        contributionPokok: contributionPokok,
        contributionSukarela: contributionSukarela,
      );

  ContributionEntity toEntity() => ContributionEntity(
        contributionWajib: contributionWajib,
        contributionPokok: contributionPokok,
        contributionSukarela: contributionSukarela,
      );
}

// String _toString(int value) {
//   return value.toString();
// }

// int _toInt(String value) => int.parse(value);
