import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/future_usecase.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/data/repositories/my_repository_impl.dart';
import 'package:koperasi/domain/entities/history/history_detail/history_detail.dart';

class GetHistoryDetailUseCaseParams extends Equatable {
  final int id;

  const GetHistoryDetailUseCaseParams({required this.id});

  @override
  List<Object> get props => [id];
}

@lazySingleton
class GetHistoryDetailUseCase extends FutureUseCase<HistoryDetail, GetHistoryDetailUseCaseParams> {
  final MyRepositoryImpl myRepository;

  GetHistoryDetailUseCase({required this.myRepository});

  @override
  Future<Either<Failure, HistoryDetail>> execute(GetHistoryDetailUseCaseParams params) {
    return myRepository.getHistoryDetail(params);
  }
}
