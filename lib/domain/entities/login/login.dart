import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/remote/response/login/user_response.dart';

import 'user.dart';

part 'login.freezed.dart';

@freezed
class Login with _$Login {
  const factory Login({
    required UserResponse? user,
    required String? message,
    required String? token,
  }) = _Login;
}
