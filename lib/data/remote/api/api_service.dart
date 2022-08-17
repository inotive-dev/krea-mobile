import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/domain/usecases/do_login_usecase.dart';

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
}
