import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/domain/usecases/do_login_usecase.dart';
import 'package:koperasi/domain/usecases/get_history_admin.dart';
import 'package:koperasi/domain/usecases/get_home_admin_usecase.dart';

import 'endpoint.dart';

@lazySingleton
class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Response> doLogin(DoLoginUseCaseParams params) async {
    return await _dio.post(
      Endpoint.login,
      data: {
        'email': params.email,
        'password': params.password,
      },
    );
  }

  // Admin
  Future<Response> getHomeAdminData(GetHomeAdminUseCaseParams params) async {
    return await _dio.get(
      Endpoint.getHomeAdminData,
      queryParameters: {'mart_id': params.martId},
    );
  }

  Future<Response> getHistoryAdminData(GetHistoryAdminUseCaseParams params) async {
    return await _dio.get(
      Endpoint.getHistoryAdminData,
      queryParameters: {'mart_id': params.martId},
    );
  }

  // User
  Future<Response> getHomeUserData(NoParam params) async {
    return await _dio.get(
      Endpoint.getHomeUserData,
    );
  }

  Future<Response> getProfile(NoParam params) async {
    return await _dio.get(
      Endpoint.getProfile,
    );
  }

  Future<Response> getHistoryUserData(NoParam params) async {
    return await _dio.get(
      Endpoint.getHistoryUserData,
    );
  }
}
