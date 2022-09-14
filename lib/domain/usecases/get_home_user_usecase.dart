import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/future_usecase.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/data/repositories/my_repository_impl.dart';
import 'package:koperasi/domain/entities/home/home_user.dart';

@lazySingleton
class GetHomeUserUseCase extends FutureUseCase<HomeUser, NoParam> {
  final MyRepositoryImpl myRepository;

  GetHomeUserUseCase({required this.myRepository});

  @override
  Future<Either<Failure, HomeUser>> execute(NoParam params) {
    return myRepository.getHomeUserData(params);
  }
}
