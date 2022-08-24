import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/domain/entities/history_entities/history.dart';
import 'package:koperasi/domain/entities/home/home.dart';
import 'package:koperasi/domain/entities/home/home_user.dart';
import 'package:koperasi/domain/entities/login/user.dart';
import 'package:koperasi/domain/entities/profile/profile.dart';
import 'package:koperasi/domain/usecases/get_history_admin.dart';
import 'package:koperasi/domain/usecases/get_home_admin_usecase.dart';

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

  @override
  Future<Either<Failure, Home>> getHomeAdminData(GetHomeAdminUseCaseParams params) async {
    final _data = await _remoteDataSource.getHomeAdminData(params);

    if (_data.data == null) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, History>> getHistoryAdminData(GetHistoryAdminUseCaseParams params) async {
    final _data = await _remoteDataSource.getHistoryAdminData(params);

    if (_data.data == null) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, HomeUser>> getHomeUserData(NoParam params) async {
    final _data = await _remoteDataSource.getHomeUserData(params);

    if (_data.data == null) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, Profile>> getProfile(NoParam params) async {
    final _data = await _remoteDataSource.getProfile(params);

    if (_data.user == null) {
      return const Left(
        Failure.defaultError(Strings.msgErrorGeneral),
      );
    }

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, History>> getHistoryUserData(NoParam params) async {
    final _data = await _remoteDataSource.getHistoryUserData(params);

    if (_data.data == null) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.toDomain());
  }
}
