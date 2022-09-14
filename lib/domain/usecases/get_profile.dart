import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/future_usecase.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/data/repositories/my_repository_impl.dart';
import 'package:koperasi/domain/entities/profile/profile.dart';

@lazySingleton
class GetProfileUseCase extends FutureUseCase<Profile, NoParam> {
  final MyRepositoryImpl myRepository;

  GetProfileUseCase({required this.myRepository});

  @override
  Future<Either<Failure, Profile>> execute(NoParam params) {
    return myRepository.getProfile(params);
  }
}
