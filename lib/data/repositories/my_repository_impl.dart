import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/domain/entities/login/user.dart';

import '../../core/const/strings.dart';
import '../../core/unions/failure.dart';
import '../../domain/entities/login/login.dart';
import '../../domain/repositories/my_repository.dart';
import '../../domain/usecases/check_login_status_usecase.dart';
import '../../domain/usecases/do_login_usecase.dart';
import '../../domain/usecases/do_logout_usecase.dart';
import '../local/local_data_source.dart';
import '../remote/remote_data_source.dart';

@LazySingleton(as: MyRepository)
class MyRepositoryImpl implements MyRepository {
  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;

  MyRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
  );

  @override
  Future<Either<Failure, Login>> doLogin(DoLoginUseCaseParams params) async {
    final _data = await _remoteDataSource.doLogin(params);

    if (_data.user == null || _data.token == null || _data.token == '') {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    await Future.wait([
      _localDataSource.saveToken(_data.token),
      _localDataSource.saveRole(_data.user?.app),
      _localDataSource.saveUser(_data.user?.toEntity()),
    ]);

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, LoginStatus>> checkLoginStatus(CheckLoginStatusUseCaseParams params) async {
    return Right(
      _localDataSource.getToken() == null ? LoginStatus.notLoggedIn : LoginStatus.loggedIn,
    );
  }

  @override
  Future<Either<Failure, dynamic>> doLogout(DoLogoutUseCaseParams params) async {
    await Future.wait(
      [
        _localDataSource.deleteUser(),
        _localDataSource.deleteToken(),
        _localDataSource.deleteRole(),
      ],
    );

    return const Right(null);
  }

  @override
  User? getUser() {
    return _localDataSource.getUser()?.toDomain();
  }
}
