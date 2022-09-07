import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/future_usecase.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/domain/entities/home/perubahan_modal/perubahan_modal.dart';
import 'package:koperasi/domain/repositories/my_repository.dart';
import 'package:koperasi/domain/usecases/get_home_admin_neraca_usecase.dart';

@lazySingleton
class GetHomeAdminPerubahanModal extends FutureUseCase<PerubahanModal, GetHomeAdminBranchesUseCaseParams> {
  final MyRepository myRepository;

  GetHomeAdminPerubahanModal({required this.myRepository});

  @override
  Future<Either<Failure, PerubahanModal>> execute(GetHomeAdminBranchesUseCaseParams params) {
    return myRepository.getHomeAdminPerubahanModal(params);
  }
}
