import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:koperasi/core/const/keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HttpUtils {
  SharedPreferences? _preferences;
  final Dio _dio = Dio();
  Dio refreshDio = Dio();

  Future<Dio> initDio() async {
    _preferences = await SharedPreferences.getInstance();
    _dio.options.headers["Accept"] = "application/json";

    // Set Bearer Token
    String? token = _preferences?.getString(Keys.accessToken);
    if (token != null) {
      _dio.options.headers["Authorization"] = "Bearer " + token;
    }

    // _dio.interceptors.clear();
    // _dio.interceptors.add(LoggingInterceptor());

    //self sign certificate code jika sewaktu-waktu butuh
    // SecurityContext sc = new SecurityContext();
    // HttpClient httpClient = new HttpClient(context: sc);
    // httpClient.badCertificateCallback =
    //     (X509Certificate cert, String host, int port) {
    //   // SystemNavigator.pop();
    //   return true;
    // };

    return _dio;
  }

  dioErrorHandling(var e) {
    print("Status code nya : " + e.response.statusCode.toString());
    if (e is DioError) {
      log("dio error : ${e.response}");
      if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout) {
        print("timeout");
      } else if (e.response?.statusCode == 401) {
        print("Status code nya : " + e.response!.statusCode.toString());
        throw Exception(e.response);
      } else {
        throw Exception("NETWORK_DIO_ERROR");
      }
    } else {
      throw Exception("NETWORK_ERROR");
    }
  }

// Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
//   final options = new Options(
//     method: requestOptions.method,
//     headers: requestOptions.headers,
//   );
//   return this.api.request<dynamic>(requestOptions.path,
//       data: requestOptions.data,
//       queryParameters: requestOptions.queryParameters,
//       options: options);
// }
}
