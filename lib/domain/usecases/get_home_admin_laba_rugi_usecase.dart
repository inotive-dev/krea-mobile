import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/future_usecase.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/domain/entities/home/branches.dart';
import 'package:koperasi/domain/repositories/my_repository.dart';
import 'package:koperasi/domain/usecases/get_home_admin_neraca_usecase.dart';

@lazySingleton
class GetHomeAdminLabaRugi extends FutureUseCase<Branches, GetHomeAdminBranchesUseCaseParams> {
  final MyRepository myRepository;

  GetHomeAdminLabaRugi({required this.myRepository});

  @override
  Future<Either<Failure, Branches>> execute(GetHomeAdminBranchesUseCaseParams params) {
    return myRepository.getHomeAdminLabaRugi(params);
  }
}
