import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../repositories/my_repository.dart';

enum LoginStatus { loggedIn, notLoggedIn }

class CheckLoginStatusUseCaseParams extends Equatable {
  const CheckLoginStatusUseCaseParams();

  @override
  List<Object> get props => [];
}

@lazySingleton
class CheckLoginStatusUseCase extends FutureUseCase<LoginStatus, CheckLoginStatusUseCaseParams> {
  final MyRepository myRepository;

  CheckLoginStatusUseCase({required this.myRepository});

  @override
  Future<Either<Failure, LoginStatus>> execute(CheckLoginStatusUseCaseParams params) {
    return myRepository.checkLoginStatus(params);
  }
}
