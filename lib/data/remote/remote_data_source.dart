import 'package:injectable/injectable.dart';
import 'package:koperasi/data/remote/response/home/home_response.dart';
import 'package:koperasi/domain/usecases/get_home_admin_usecase.dart';

import '../../domain/usecases/do_login_usecase.dart';
import 'api/api_service.dart';
import 'response/login/login_response.dart';

@lazySingleton
class RemoteDataSource {
  final ApiService _apiService;

  RemoteDataSource(this._apiService);

  Future<LoginResponse> doLogin(DoLoginUseCaseParams params) async {
    final _response = await _apiService.doLogin(params);
    return LoginResponse.fromJson(_response.data);
  }

  Future<HomeResponse> getHomeAdminData(GetHomeAdminUseCaseParams params) async {
    final _response = await _apiService.getHomeAdminData(params);
    return HomeResponse.fromJson(_response.data);
  }
}
