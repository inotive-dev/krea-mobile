
import 'package:dio/dio.dart';
import 'package:koperasi/core/const/endpoints.dart';
import 'package:koperasi/data/model/login_response.dart';

class LoginRepository {

  Future<LoginResponse?> authLogin({required String email, required String password}) async {
    Dio dio = Dio();
    var loginData = FormData.fromMap({
      'email': email,
      'password': password,
    });
    LoginResponse? _loginResponse;
    var _resopnse  = await dio.post(Endpoints.login, data: loginData);
    if(_resopnse.statusCode == 200){
      _loginResponse = LoginResponse.fromJson(_resopnse.data);
    }
    return _loginResponse;
  }
}