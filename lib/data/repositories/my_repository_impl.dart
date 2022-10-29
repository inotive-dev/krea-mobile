import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/core/utils/network_info/network_info.dart';
import 'package:koperasi/data/local/entities/home/home_data_entity.dart';
import 'package:koperasi/data/local/entities/home/user/home_user_data_entity.dart';
import 'package:koperasi/data/remote/response/login/user_response.dart';
import 'package:koperasi/domain/entities/history/history.dart';
import 'package:koperasi/domain/entities/history/history_detail/history_detail.dart';
import 'package:koperasi/domain/entities/home/branches.dart';
import 'package:koperasi/domain/entities/home/home.dart';
import 'package:koperasi/domain/entities/home/home_user.dart';
import 'package:koperasi/domain/entities/home/perubahan_modal/perubahan_modal.dart';
import 'package:koperasi/domain/entities/home/sales_reports.dart';
import 'package:koperasi/domain/entities/home/validate_data/validate_data.dart';
import 'package:koperasi/domain/entities/profile/profile.dart';
import 'package:koperasi/domain/entities/profile/update_profile.dart';
import 'package:koperasi/domain/usecases/get_history_admin.dart';
import 'package:koperasi/domain/usecases/get_history_detail.dart';
import 'package:koperasi/domain/usecases/get_home_admin_neraca_usecase.dart';
import 'package:koperasi/domain/usecases/get_home_admin_sales_reports.dart';
import 'package:koperasi/domain/usecases/get_home_admin_usecase.dart';
import 'package:koperasi/domain/usecases/send_email_reset_password_usecase.dart';
import 'package:koperasi/domain/usecases/send_otp_reset_password_usecase%20copy.dart';
import 'package:koperasi/domain/usecases/send_otp_reset_password_usecase.dart';
import 'package:koperasi/domain/usecases/update_profile.dart';
import 'package:koperasi/domain/usecases/validate_data_usecase.dart';

import '../../core/const/strings.dart';
import '../../core/unions/failure.dart';
import '../../domain/entities/login/login.dart';
import '../../domain/repositories/my_repository.dart';
import '../../domain/usecases/check_login_status_usecase.dart';
import '../../domain/usecases/do_login_usecase.dart';
import '../../domain/usecases/do_logout_usecase.dart';
import '../local/local_data_source.dart';
import '../remote/remote_data_source.dart';

@LazySingleton()
class MyRepositoryImpl implements MyRepository {
  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;
  final NetworkInfoImpl _networkInfoImpl;

  MyRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
    this._networkInfoImpl,
  );

  @override
  Future<Either<Failure, Login>> doLogin(DoLoginUseCaseParams params) async {
    final _data = await _remoteDataSource.doLogin(params);

    if (_data.user == null || _data.token == null || _data.token == '') {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    // Save to local storage
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
        // _localDataSource.deleteUser(),
        // _localDataSource.deleteToken(),
        // _localDataSource.deleteRole(),
        _localDataSource.deleteHiveData(),
      ],
    );

    return const Right(null);
  }

  @override
  UserResponse? getUser() {
    return _localDataSource.getUser()?.toDomain();
  }

  @override
  Future<Either<Failure, Home>> getHomeAdminData(GetHomeAdminUseCaseParams params) async {
    if (await _networkInfoImpl.isConnected) {
      final _data = await _remoteDataSource.getHomeAdminData(params);

      if (_data.data == null) {
        return Left(
          Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
        );
      }

      // Save to local storage
      await Future.wait([
        _localDataSource.saveHomeAdmin(_data.data?.toEntity()),
      ]);

      return Right(_data.toDomain());
    } else {
      return Right(
        Home(
          data: _localDataSource.getHomeAdmin()?.toDomain(),
          message: 'Success get local storage home admin',
          statusCode: 200,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, History>> getHistoryAdminData(GetHistoryAdminUseCaseParams params) async {
    if (await _networkInfoImpl.isConnected) {
      final _data = await _remoteDataSource.getHistoryAdminData(params);

      if (_data.data == null) {
        return Left(
          Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
        );
      }

      // Save to local storage
      await Future.wait([
        _localDataSource.saveHistoryAdmin(_data.data?.toEntity()),
      ]);

      return Right(_data.toDomain());
    } else {
      return Right(History(
        data: _localDataSource.getHistoryAdmin()?.toDomain(),
        message: 'Success get local storage history admin',
        statusCode: 200,
      ));
    }
  }

  @override
  Future<Either<Failure, Branches>> getHomeAdminLabaRugi(GetHomeAdminBranchesUseCaseParams params) async {
    if (await _networkInfoImpl.isConnected) {
      final _data = await _remoteDataSource.getHomeAdminLabaRugi(params);

      if (_data.data == null) {
        return Left(
          Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
        );
      }

      // Save to local storage
      await Future.wait([
        _localDataSource.saveHomeAdminLabaRugi(_data.data?.toEntity()),
      ]);

      return Right(_data.toDomain());
    } else {
      return Right(Branches(
        message: 'Success get local storage home admin laba rugi',
        statusCode: 200,
        data: _localDataSource.getHomeAdminLabaRugi()?.toDomain(),
      ));
    }
  }

  @override
  Future<Either<Failure, Branches>> getHomeAdminNeraca(GetHomeAdminBranchesUseCaseParams params) async {
    if (await _networkInfoImpl.isConnected) {
      final _data = await _remoteDataSource.getHomeAdminNeraca(params);

      if (_data.data == null) {
        return Left(
          Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
        );
      }

      // Save to local storage
      await Future.wait([
        _localDataSource.saveHomeAdminNeraca(_data.data?.toEntity()),
      ]);

      return Right(_data.toDomain());
    } else {
      return Right(Branches(
        message: 'Success get local storage home admin neraca',
        statusCode: 200,
        data: _localDataSource.getHomeAdminNeraca()?.toDomain(),
      ));
    }
  }

  @override
  Future<Either<Failure, PerubahanModal>> getHomeAdminPerubahanModal(GetHomeAdminBranchesUseCaseParams params) async {
    if (await _networkInfoImpl.isConnected) {
      final _data = await _remoteDataSource.getHomeAdminPerubahanModal(params);

      if (_data.data == null) {
        return Left(
          Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
        );
      }

      // Save to local storage
      await Future.wait([
        _localDataSource.saveHomeAdminPerubahanModal(_data.data?.toEntity()),
      ]);

      return Right(_data.toDomain());
    } else {
      return Right(PerubahanModal(
        message: 'Success get local storage home admin perubahan modal',
        statusCode: 200,
        data: _localDataSource.getHomeAdminPerubahanModal()?.toDomain(),
      ));
    }
  }

  @override
  Future<Either<Failure, HomeUser>> getHomeUserData(NoParam params) async {
    if (await _networkInfoImpl.isConnected) {
      final _data = await _remoteDataSource.getHomeUserData(params);

      if (_data.data == null) {
        return Left(
          Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
        );
      }

      // Save to local storage
      await Future.wait([
        _localDataSource.saveHomeUser(_data.data?.toEntity()),
      ]);

      return Right(_data.toDomain());
    } else {
      return Right(
        HomeUser(
          data: _localDataSource.getHomeUser()?.toDomain(),
          message: 'Success get local storage home user',
          statusCode: 200,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Profile>> getProfile(NoParam params) async {
    if (await _networkInfoImpl.isConnected) {
      final _data = await _remoteDataSource.getProfile(params);

      if (_data.user == null) {
        return const Left(
          Failure.defaultError(Strings.msgErrorGeneral),
        );
      }

      // Save to local storage
      await Future.wait([
        _localDataSource.saveUser(_data.user?.toEntity()),
      ]);

      return Right(_data.toDomain());
    } else {
      return Right(
        Profile(user: _localDataSource.getUser()?.toDomain()),
      );
    }
  }

  @override
  Future<Either<Failure, History>> getHistoryUserData(NoParam params) async {
    if (await _networkInfoImpl.isConnected) {
      final _data = await _remoteDataSource.getHistoryUserData(params);

      if (_data.data == null) {
        return Left(
          Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
        );
      }

      // Save to local storage
      await Future.wait([
        _localDataSource.saveHistoryUser(_data.data?.toEntity()),
      ]);

      return Right(_data.toDomain());
    } else {
      return Right(History(
        data: _localDataSource.getHistoryUser()?.toDomain(),
        message: 'Success get local storage history user',
        statusCode: 200,
      ));
    }
  }

  @override
  Future<Either<Failure, HistoryDetail>> getHistoryDetail(GetHistoryDetailUseCaseParams params) async {
    final _data = await _remoteDataSource.getHistoryDetail(params);

    if (_data.data == null) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, UpdateProfile>> updateProfile(UpdateProfileUseCaseParams params) async {
    final _data = await _remoteDataSource.updateProfile(params);

    if (_data.user == null) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    _localDataSource.saveUser(_data.user?.toEntity());

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, SalesReports>> getHomeAdminSalesReports(GetAdminHomeSalesReportsUseCaseParams params) async {
    if (await _networkInfoImpl.isConnected) {
      final _data = await _remoteDataSource.getHomeAdminSalesReports(params);

      if (_data.data == null) {
        return Left(
          Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
        );
      }

      // Save to local storage
      await Future.wait([
        _localDataSource.saveSalesReportDataAdmin(_data.data?.toEntity()),
      ]);

      return Right(_data.toDomain());
    } else {
      return Right(SalesReports(
        data: _localDataSource.getSalesReportDataAdmin()?.toDomain(),
        message: 'Success get local storage admin sales reports',
        statusCode: 200,
      ));
    }
  }

  @override
  Future<Either<Failure, ValidateData>> validateData(ValidateDataUseCaseParams params) async {
    final _data = await _remoteDataSource.validateData(params);

    if (!_data.statusCode.toString().contains('20')) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    // Get local storage
    HomeUserDataEntity? homeUserDataEntity = _localDataSource.getHomeUser();
    if (homeUserDataEntity != null) {
      final newData = HomeUserDataEntity(
        contribution: homeUserDataEntity.contribution,
        totalSaldoSimpananUtang: _data.data?.newestTotalSaldoSimpananUtang,
        totalUtang: _data.data?.newestTotalSaldoUtang,
      );

      // Save to local storage
      await Future.wait([
        _localDataSource.saveHomeUser(newData),
      ]);
    }

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, ValidateData>> validateDataAdmin(ValidateDataUseCaseParams params) async {
    final _data = await _remoteDataSource.validateData(params);

    if (!_data.statusCode.toString().contains('20')) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    // Get local storage
    HomeDataEntity? homeDataEntity = _localDataSource.getHomeAdmin();
    if (homeDataEntity != null) {
      final newData = HomeDataEntity(
        totalSaldoSimpananUtang: _data.data?.newestTotalSaldoSimpananUtang?.toDouble(),
        totalUtang: _data.data?.newestTotalSaldoUtang?.toDouble(),
        produkCepatTerjual: homeDataEntity.produkCepatTerjual,
        produkLamaTerjual: homeDataEntity.produkLamaTerjual,
      );

      // Save to local storage
      await Future.wait([
        _localDataSource.saveHomeAdmin(newData),
      ]);
    }

    return Right(_data.toDomain());
  }

  @override
  Future<Either<Failure, String>> sendEmailResetPassword(SendEmailUseCaseParams params) async {
    final _data = await _remoteDataSource.sendEmailResetPassword(params);

    if (!_data.statusCode.toString().contains('20')) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.message ?? 'Silahkan cek email anda!');
  }

  @override
  Future<Either<Failure, String>> sendOTPResetPassword(SendOTPUseCaseParams params) async {
    final _data = await _remoteDataSource.sendOTPResetPassword(params);

    if (!_data.statusCode.toString().contains('20')) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.message ?? 'OTP dapat digunakan');
  }

  @override
  Future<Either<Failure, String>> sendResetPassword(SendResetPasswordUseCaseParams params) async {
    final _data = await _remoteDataSource.sendResetPassword(params);

    if (!_data.statusCode.toString().contains('20')) {
      return Left(
        Failure.defaultError(_data.message ?? Strings.msgErrorGeneral),
      );
    }

    return Right(_data.message ?? 'Password berhasil diupdate');
  }
}
