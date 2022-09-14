import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch.freezed.dart';

@freezed
class Branch with _$Branch {
  const factory Branch({
    required String? martName,
    required double? total,
  }) = _Branch;
}
