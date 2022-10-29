import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/usecase.dart';
import 'package:koperasi/data/remote/response/login/user_response.dart';
import 'package:koperasi/data/repositories/my_repository_impl.dart';

import '../../core/base/usecase/no_param.dart';

@lazySingleton
class GetUserUseCase extends UseCase<UserResponse?, NoParam> {
  final MyRepositoryImpl myRepository;

  GetUserUseCase({required this.myRepository});

  @override
  UserResponse? call(NoParam params) {
    return myRepository.getUser();
  }
}
