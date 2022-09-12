import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/future_usecase.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/domain/entities/history/history.dart';
import 'package:koperasi/domain/repositories/my_repository.dart';

class GetHistoryAdminUseCaseParams extends Equatable {
  final String martId;

  const GetHistoryAdminUseCaseParams({required this.martId});

  @override
  List<Object> get props => [martId];
}

@lazySingleton
class GetHistoryAdminUseCase extends FutureUseCase<History, GetHistoryAdminUseCaseParams> {
  final MyRepository myRepository;

  GetHistoryAdminUseCase({required this.myRepository});

  @override
  Future<Either<Failure, History>> execute(GetHistoryAdminUseCaseParams params) {
    return myRepository.getHistoryAdminData(params);
  }
}
