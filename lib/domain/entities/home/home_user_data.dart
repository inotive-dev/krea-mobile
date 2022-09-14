import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/contribution.dart';

part 'home_user_data.freezed.dart';

@freezed
class HomeUserData with _$HomeUserData {
  const factory HomeUserData({
    required Contribution contribution,
    required double totalSaldoSimpananUtang,
    required String totalUtang,
  }) = _HomeUserData;

  factory HomeUserData.initial() => HomeUserData(
        contribution: Contribution.initial(),
        totalSaldoSimpananUtang: 0,
        totalUtang: '0',
      );
}
