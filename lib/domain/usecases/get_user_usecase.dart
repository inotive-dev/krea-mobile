import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/usecase.dart';
import 'package:koperasi/data/repositories/my_repository_impl.dart';

import '../../core/base/usecase/no_param.dart';
import '../entities/login/user.dart';

@lazySingleton
class GetUserUseCase extends UseCase<User?, NoParam> {
  final MyRepositoryImpl myRepository;

  GetUserUseCase({required this.myRepository});

  @override
  User? call(NoParam params) {
    return myRepository.getUser();
  }
}
