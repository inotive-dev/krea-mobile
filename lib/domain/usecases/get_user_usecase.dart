import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/usecase.dart';

import '../../core/base/usecase/no_param.dart';
import '../entities/login/user.dart';
import '../repositories/my_repository.dart';

@lazySingleton
class GetUserUseCase extends UseCase<User?, NoParam> {
  final MyRepository myRepository;

  GetUserUseCase({required this.myRepository});

  @override
  User? call(NoParam params) {
    return myRepository.getUser();
  }
}
