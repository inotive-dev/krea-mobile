import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/branches_data.dart';

part 'branches.freezed.dart';

@freezed
class Branches with _$Branches {
  const factory Branches({
    required String? message,
    required int? statusCode,
    required BranchesData? data,
  }) = _Branches;
}
