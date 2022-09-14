import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/data/repositories/my_repository_impl.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';

enum LoginStatus { loggedIn, notLoggedIn }

class CheckLoginStatusUseCaseParams extends Equatable {
  const CheckLoginStatusUseCaseParams();

  @override
  List<Object> get props => [];
}

@lazySingleton
class CheckLoginStatusUseCase extends FutureUseCase<LoginStatus, CheckLoginStatusUseCaseParams> {
  final MyRepositoryImpl myRepository;

  CheckLoginStatusUseCase({required this.myRepository});

  @override
  Future<Either<Failure, LoginStatus>> execute(CheckLoginStatusUseCaseParams params) {
    return myRepository.checkLoginStatus(params);
  }
}
