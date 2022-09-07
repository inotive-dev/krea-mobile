import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/future_usecase.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/domain/entities/home/branches.dart';
import 'package:koperasi/domain/repositories/my_repository.dart';

class GetHomeAdminBranchesUseCaseParams extends Equatable {
  final String year;
  final String type;
  final int page;

  const GetHomeAdminBranchesUseCaseParams({
    required this.year,
    required this.type,
    required this.page,
  });

  @override
  List<Object> get props => [
        year,
        type,
        page,
      ];
}

@lazySingleton
class GetHomeAdminNeraca extends FutureUseCase<Branches, GetHomeAdminBranchesUseCaseParams> {
  final MyRepository myRepository;

  GetHomeAdminNeraca({required this.myRepository});

  @override
  Future<Either<Failure, Branches>> execute(GetHomeAdminBranchesUseCaseParams params) {
    return myRepository.getHomeAdminNeraca(params);
  }
}
