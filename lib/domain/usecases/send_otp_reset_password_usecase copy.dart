import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/data/repositories/my_repository_impl.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';

class SendResetPasswordUseCaseParams extends Equatable {
  final String otp;
  final String password;

  const SendResetPasswordUseCaseParams({
    required this.otp,
    required this.password,
  });

  @override
  List<Object?> get props => [
        otp,
        password,
      ];
}

@lazySingleton
class SendResetPasswordUseCase extends FutureUseCase<String, SendResetPasswordUseCaseParams> {
  final MyRepositoryImpl myRepository;

  SendResetPasswordUseCase({required this.myRepository});

  @override
  Future<Either<Failure, String>> execute(SendResetPasswordUseCaseParams params) {
    return myRepository.sendResetPassword(params);
  }
}
