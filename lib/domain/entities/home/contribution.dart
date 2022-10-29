import 'package:freezed_annotation/freezed_annotation.dart';

part 'contribution.freezed.dart';

@freezed
class Contribution with _$Contribution {
  const factory Contribution({
    required int? contributionWajib,
    required int? contributionPokok,
    required int? contributionSukarela,
  }) = _Contribution;

  factory Contribution.initial() => const Contribution(
        contributionWajib: 0,
        contributionPokok: 0,
        contributionSukarela: 0,
      );
}
