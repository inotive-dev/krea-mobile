import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/local/entities/home/neraca/branch_entity.dart';
import 'package:koperasi/domain/entities/home/branch.dart';

part 'branch_response.freezed.dart';
part 'branch_response.g.dart';

@freezed
class BranchResponse with _$BranchResponse {
  const BranchResponse._();

  const factory BranchResponse({
    @JsonKey(name: 'mart_name') required String? martName,
    required double? total,
  }) = _BranchResponse;

  factory BranchResponse.fromJson(Map<String, dynamic> json) => _$BranchResponseFromJson(json);

  Branch toDomain() => Branch(
        martName: martName,
        total: total,
      );

  BranchEntity toEntity() => BranchEntity(
        martName: martName,
        total: total,
      );
}
