import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/home/link_response.dart';
import 'package:koperasi/data/remote/response/home/neraca/branch_response.dart';
import 'package:koperasi/domain/entities/home/branches_data.dart';

part 'branches_data_response.freezed.dart';
part 'branches_data_response.g.dart';

@freezed
class BranchesDataResponse with _$BranchesDataResponse {
  const BranchesDataResponse._();

  const factory BranchesDataResponse({
    @JsonKey(name: 'current_page') required int? currentPage,
    required List<BranchResponse>? data,
    @JsonKey(name: 'first_page_url') required String? firstPageUrl,
    required int? from,
    @JsonKey(name: 'last_page') required int? lastPage,
    @JsonKey(name: 'last_page_url') required String? lastPageUrl,
    required List<LinkResponse> links,
    @JsonKey(name: 'next_page_url') required String? nextPageUrl,
    required String? path,
    @JsonKey(name: 'per_page') required int? perPage,
    @JsonKey(name: 'prev_page_url') required String? prevPageUrl,
    required int? to,
    required int? total,
  }) = _BranchesDataResponse;

  factory BranchesDataResponse.fromJson(Map<String, dynamic> json) => _$BranchesDataResponseFromJson(json);

  BranchesData toDomain() => BranchesData(
        currentPage: currentPage,
        data: data?.map((e) => e.toDomain()).toList(),
        firstPageUrl: firstPageUrl,
        from: from,
        lastPage: lastPage,
        lastPageUrl: lastPageUrl,
        links: links.map((e) => e.toDomain()).toList(),
        nextPageUrl: nextPageUrl,
        path: path,
        perPage: perPage,
        prevPageUrl: prevPageUrl,
        to: to,
        total: total,
      );
}
