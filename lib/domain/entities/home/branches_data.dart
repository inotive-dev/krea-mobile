import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/branch.dart';
import 'package:koperasi/domain/entities/home/link.dart';

part 'branches_data.freezed.dart';

@freezed
class BranchesData with _$BranchesData {
  const factory BranchesData({
    required int? currentPage,
    required List<Branch>? data,
    required String? firstPageUrl,
    required int? from,
    required int? lastPage,
    required String? lastPageUrl,
    required List<Link>? links,
    required String? nextPageUrl,
    required String? path,
    required int? perPage,
    required String? prevPageUrl,
    required int? to,
    required int? total,
  }) = _BranchesData;

  factory BranchesData.initial() => const BranchesData(
        currentPage: 0,
        data: [],
        firstPageUrl: null,
        from: 0,
        lastPage: 0,
        lastPageUrl: null,
        links: [],
        nextPageUrl: null,
        path: null,
        perPage: 0,
        prevPageUrl: null,
        to: 0,
        total: 0,
      );
}
