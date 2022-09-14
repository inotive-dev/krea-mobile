import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/data/repositories/my_repository_impl.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';

class DoLogoutUseCaseParams extends Equatable {
  const DoLogoutUseCaseParams();

  @override
  List<Object> get props => [];
}

@lazySingleton
class DoLogoutUseCase extends FutureUseCase<dynamic, DoLogoutUseCaseParams> {
  final MyRepositoryImpl myRepository;

  DoLogoutUseCase({required this.myRepository});

  @override
  Future<Either<Failure, dynamic>> execute(DoLogoutUseCaseParams params) {
    return myRepository.doLogout(params);
  }
}
