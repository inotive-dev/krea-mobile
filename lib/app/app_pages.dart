import 'package:get/route_manager.dart';
import 'package:koperasi/presentation/auth/login_page.dart';
import 'package:koperasi/presentation/history/user/history_detail.dart';

import '../presentation/home/home_page.dart';

class AppPages {
  const AppPages._();

  static final List<GetPage> routes = [
    GetPage(
      name: LoginPage.routeName,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: HomePage.routeName,
      page: () => const HomePage(),
    ),
    GetPage(
      name: HistoryDetail.routeName,
      page: () => const HistoryDetail(),
    ),
  ];
}