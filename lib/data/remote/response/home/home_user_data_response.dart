import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/local/entities/home/user/home_user_data_entity.dart';
import 'package:koperasi/domain/entities/home/home_user_data.dart';

import 'contribution_response.dart';

part 'home_user_data_response.freezed.dart';
part 'home_user_data_response.g.dart';

@freezed
class HomeUserDataResponse with _$HomeUserDataResponse {
  const HomeUserDataResponse._();

  const factory HomeUserDataResponse({
    @JsonKey(name: 'contribution') required ContributionResponse contribution,
    @JsonKey(name: 'total_saldo_simpanan_utang') required int totalSaldoSimpananUtang,
    @JsonKey(name: 'total_utang') required int totalUtang,
  }) = _HomeUserDataResponse;

  factory HomeUserDataResponse.fromJson(Map<String, dynamic> json) => _$HomeUserDataResponseFromJson(json);

  HomeUserData toDomain() => HomeUserData(
        contribution: contribution.toDomain(),
        totalSaldoSimpananUtang: totalSaldoSimpananUtang,
        totalUtang: totalUtang,
      );

  HomeUserDataEntity toEntity() => HomeUserDataEntity(
        contribution: contribution.toEntity(),
        totalSaldoSimpananUtang: totalSaldoSimpananUtang,
        totalUtang: totalUtang,
      );
}
