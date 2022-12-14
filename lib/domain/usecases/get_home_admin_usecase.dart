import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/future_usecase.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/data/repositories/my_repository_impl.dart';
import 'package:koperasi/domain/entities/home/home.dart';

class GetHomeAdminUseCaseParams extends Equatable {
  final String martId;
  final int page;

  const GetHomeAdminUseCaseParams({
    required this.martId,
    required this.page,
  });

  @override
  List<Object> get props => [
        martId,
        page,
      ];
}

@lazySingleton
class GetHomeAdminUseCase extends FutureUseCase<Home, GetHomeAdminUseCaseParams> {
  final MyRepositoryImpl myRepository;

  GetHomeAdminUseCase({required this.myRepository});

  @override
  Future<Either<Failure, Home>> execute(GetHomeAdminUseCaseParams params) {
    return myRepository.getHomeAdminData(params);
  }
}
