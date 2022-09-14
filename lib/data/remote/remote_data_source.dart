import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/data/remote/response/base_response.dart';
import 'package:koperasi/data/remote/response/history/history_detail/history_detail_response.dart';
import 'package:koperasi/data/remote/response/history/history_response.dart';
import 'package:koperasi/data/remote/response/home/home_user_response.dart';
import 'package:koperasi/data/remote/response/home/neraca/branches_response.dart';
import 'package:koperasi/data/remote/response/home/perubahan_modal/perubahan_modal_response.dart';
import 'package:koperasi/data/remote/response/home/report/home_response.dart';
import 'package:koperasi/data/remote/response/home/sales_report/sales_report_response.dart';
import 'package:koperasi/data/remote/response/profile/profile_response.dart';
import 'package:koperasi/data/remote/response/profile/update_profile_response.dart';
import 'package:koperasi/domain/usecases/get_history_admin.dart';
import 'package:koperasi/domain/usecases/get_history_detail.dart';
import 'package:koperasi/domain/usecases/get_home_admin_neraca_usecase.dart';
import 'package:koperasi/domain/usecases/get_home_admin_sales_reports.dart';
import 'package:koperasi/domain/usecases/get_home_admin_usecase.dart';
import 'package:koperasi/domain/usecases/send_email_reset_password_usecase.dart';
import 'package:koperasi/domain/usecases/send_otp_reset_password_usecase%20copy.dart';
import 'package:koperasi/domain/usecases/send_otp_reset_password_usecase.dart';
import 'package:koperasi/domain/usecases/update_profile.dart';

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

  // Admin
  Future<HomeResponse> getHomeAdminData(GetHomeAdminUseCaseParams params) async {
    final _response = await _apiService.getHomeAdminData(params);
    return HomeResponse.fromJson(_response.data);
  }

  Future<BranchesResponse> getHomeAdminNeraca(GetHomeAdminBranchesUseCaseParams params) async {
    final _response = await _apiService.getHomeAdminNeraca(params);
    return BranchesResponse.fromJson(_response.data);
  }

  Future<BranchesResponse> getHomeAdminLabaRugi(GetHomeAdminBranchesUseCaseParams params) async {
    final _response = await _apiService.getHomeAdminLabaRugi(params);
    return BranchesResponse.fromJson(_response.data);
  }

  Future<PerubahanModalResponse> getHomeAdminPerubahanModal(GetHomeAdminBranchesUseCaseParams params) async {
    final _response = await _apiService.getHomeAdminPerubahanModal(params);
    return PerubahanModalResponse.fromJson(_response.data);
  }

  Future<HistoryResponse> getHistoryAdminData(GetHistoryAdminUseCaseParams params) async {
    final _response = await _apiService.getHistoryAdminData(params);
    return HistoryResponse.fromJson(_response.data);
  }

  Future<HistoryDetailResponse> getHistoryDetail(GetHistoryDetailUseCaseParams params) async {
    final _response = await _apiService.getHistoryDetail(params);
    return HistoryDetailResponse.fromJson(_response.data);
  }

  // User
  Future<HomeUserResponse> getHomeUserData(NoParam params) async {
    final _response = await _apiService.getHomeUserData(params);
    return HomeUserResponse.fromJson(_response.data);
  }

  Future<ProfileResponse> getProfile(NoParam params) async {
    final _response = await _apiService.getProfile(params);
    return ProfileResponse.fromJson(_response.data);
  }

  Future<HistoryResponse> getHistoryUserData(NoParam params) async {
    final _response = await _apiService.getHistoryUserData(params);
    return HistoryResponse.fromJson(_response.data);
  }

  Future<UpdateProfileResponse> updateProfile(UpdateProfileUseCaseParams params) async {
    final _response = await _apiService.updateProfile(params);
    return UpdateProfileResponse.fromJson(_response.data);
  }

  Future<SalesReportResponse> getHomeAdminSalesReports(GetAdminHomeSalesReportsUseCaseParams params) async {
    final _response = await _apiService.getHomeAdminSalesReport(params);
    return SalesReportResponse.fromJson(_response.data);
  }

  Future<BaseResponse> sendEmailResetPassword(SendEmailUseCaseParams params) async {
    final _response = await _apiService.sendEmailResetPassword(params);
    return BaseResponse.fromJson(_response.data);
  }

  Future<BaseResponse> sendOTPResetPassword(SendOTPUseCaseParams params) async {
    try {
      final _response = await _apiService.sendOTPResetPassword(params);
      return BaseResponse.fromJson(_response.data);
    } on DioError catch (e) {
      final res = e.response;

      return Future.value(BaseResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
      ));
    }
  }

  Future<BaseResponse> sendResetPassword(SendResetPasswordUseCaseParams params) async {
    try {
      final _response = await _apiService.sendResetPassword(params);
      return BaseResponse.fromJson(_response.data);
    } on DioError catch (e) {
      final res = e.response;

      return Future.value(BaseResponse(
        message: res?.data['message'],
        statusCode: e.response?.statusCode,
      ));
    }
  }
}
