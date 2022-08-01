
import 'package:dio/dio.dart';
import 'package:koperasi/core/const/endpoints.dart';
import 'package:koperasi/data/model/login_response.dart';
import 'package:koperasi/data/model/profile_response.dart';
import 'package:koperasi/data/model/profile_response.dart';
import 'package:koperasi/data/model/profile_response.dart';
import 'package:koperasi/repository/http_utils.dart';

class ProfileRepository {

  Future<ProfileResponse?> getProfile() async {
    Dio dio = await HttpUtils().initDio();
    ProfileResponse? _profileResponse;
    var _resopnse  = await dio.get(Endpoints.getProfile);
    if(_resopnse.statusCode == 200){
      _profileResponse = ProfileResponse.fromJson(_resopnse.data);
    }
    return _profileResponse;
  }
}