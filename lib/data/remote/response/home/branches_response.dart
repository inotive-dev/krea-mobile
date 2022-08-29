import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/home/branch_response.dart';
import 'package:koperasi/domain/entities/home/branches.dart';

part 'branches_response.freezed.dart';
part 'branches_response.g.dart';

@freezed
class BranchesResponse with _$BranchesResponse {
  const BranchesResponse._();

  const factory BranchesResponse({
    required String? message,
    required int? statusCode,
    required List<BranchResponse>? data,
  }) = _BranchesResponse;

  factory BranchesResponse.fromJson(Map<String, dynamic> json) => _$BranchesResponseFromJson(json);

  Branches toDomain() => Branches(
        message: message,
        statusCode: statusCode,
        data: data?.map((e) => e.toDomain()).toList(),
      );
}
