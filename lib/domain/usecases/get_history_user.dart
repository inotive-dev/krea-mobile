import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/future_usecase.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/domain/entities/history/history.dart';
import 'package:koperasi/domain/repositories/my_repository.dart';

@lazySingleton
class GetHistoryUserUseCase extends FutureUseCase<History, NoParam> {
  final MyRepository myRepository;

  GetHistoryUserUseCase({required this.myRepository});

  @override
  Future<Either<Failure, History>> execute(NoParam params) {
    return myRepository.getHistoryUserData(params);
  }
}
