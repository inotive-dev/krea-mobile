import 'package:dartz/dartz.dart';
import 'package:koperasi/domain/entities/history_entities/history.dart';
import 'package:koperasi/domain/entities/home/home.dart';
import 'package:koperasi/domain/usecases/check_login_status_usecase.dart';
import 'package:koperasi/domain/usecases/do_login_usecase.dart';
import 'package:koperasi/domain/usecases/do_logout_usecase.dart';
import 'package:koperasi/domain/usecases/get_history_admin.dart';
import 'package:koperasi/domain/usecases/get_home_admin_usecase.dart';

import '../../core/unions/failure.dart';

import '../entities/login/login.dart';
import '../entities/login/user.dart';

abstract class MyRepository {
  Future<Either<Failure, Login>> doLogin(DoLoginUseCaseParams params);
  Future<Either<Failure, LoginStatus>> checkLoginStatus(CheckLoginStatusUseCaseParams params);
  Future<Either<Failure, dynamic>> doLogout(DoLogoutUseCaseParams params);
  User? getUser();
  Future<Either<Failure, Home>> getHomeAdminData(GetHomeAdminUseCaseParams params);
  Future<Either<Failure, History>> getHistoryAdminData(GetHistoryAdminUseCaseParams params);
}
