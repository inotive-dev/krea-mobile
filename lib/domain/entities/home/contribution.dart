import 'package:freezed_annotation/freezed_annotation.dart';

part 'contribution.freezed.dart';

@freezed
class Contribution with _$Contribution {
  const factory Contribution({
    required String? contributionWajib,
    required String? contributionPokok,
    required double? contributionSukarela,
  }) = _Contribution;

  factory Contribution.initial() => const Contribution(
        contributionWajib: '0',
        contributionPokok: '0',
        contributionSukarela: 0,
      );
}
