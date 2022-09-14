import 'package:get/route_manager.dart';
import 'package:koperasi/presentation/auth/login_page.dart';
import 'package:koperasi/presentation/history/widget/history_detail_page.dart';
import 'package:koperasi/presentation/reset_password/reset_password_page.dart';

import '../presentation/home/home_page.dart';

class AppPages {
  const AppPages._();

  static final List<GetPage> routes = [
    GetPage(
      name: LoginPage.routeName,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: ResetPasswordPage.routeName,
      page: () => const ResetPasswordPage(),
    ),
    GetPage(
      name: HomePage.routeName,
      page: () => const HomePage(),
    ),
    GetPage(
      name: HistoryDetailPage.routeName,
      page: () => const HistoryDetailPage(),
    ),
  ];
}
