import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/data/repositories/my_repository_impl.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';

class SendOTPUseCaseParams extends Equatable {
  final String otp;

  const SendOTPUseCaseParams({
    required this.otp,
  });

  @override
  List<Object?> get props => [otp];
}

@lazySingleton
class SendOTPResetPasswordUseCase extends FutureUseCase<String, SendOTPUseCaseParams> {
  final MyRepositoryImpl myRepository;

  SendOTPResetPasswordUseCase({required this.myRepository});

  @override
  Future<Either<Failure, String>> execute(SendOTPUseCaseParams params) {
    return myRepository.sendOTPResetPassword(params);
  }
}
