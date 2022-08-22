import 'package:flutter/material.dart';
import 'package:koperasi/data/local/local_data_source.dart';
import 'package:koperasi/di/injection_container.dart';
import 'package:koperasi/presentation/history/admin/history_admin_page.dart';
import 'package:koperasi/presentation/home/admin/home_admin_page.dart';
import 'package:koperasi/presentation/home/widgets/bottom_nav_bar.dart';

import '../../core/const/strings.dart';
import '../../core/style/color_palettes.dart';
import '../../core/style/sizes.dart';
import '../profile/profile_page.dart';
import 'home_app_bar.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late LocalDataSource _localDataSource;

  int _selectedIndex = 0;
  final PageController pageController = PageController(initialPage: 0);

  late final List<Widget> _widgetOptions;
  late final List<PreferredSizeWidget> _widgetAppBar;

  void _onItemTapped(int index) {
    setState(() {
      pageController.jumpToPage(index);
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    _localDataSource = getIt.get<LocalDataSource>();
    final role = _localDataSource.getRole();

    setState(() {
      _widgetOptions = <Widget>[
        role == 'admin' ? const HomeAdminPage() : const HomePage(),
        const HistoryAdminPage(),
        const ProfilePage()
      ];
    });

    _widgetAppBar = <PreferredSizeWidget>[
      role == 'admin'
          ? PreferredSize(
              preferredSize: Size.fromHeight(Sizes.height131),
              child: const SizedBox(),
            )
          : PreferredSize(
              preferredSize: Size.fromHeight(Sizes.height131),
              child: const HomeAppBar(),
            ),
      AppBar(
        backgroundColor: ColorPalettes.greyAppBar,
        title: Text(
          Strings.history,
          style: TextStyle(
            color: ColorPalettes.darkBlue,
            fontSize: Sizes.sp20,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      AppBar(
        backgroundColor: ColorPalettes.greyAppBar,
        title: Text(
          Strings.profile,
          style: TextStyle(
            color: ColorPalettes.darkBlue,
            fontSize: Sizes.sp20,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      appBar: _widgetAppBar[_selectedIndex],
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: _widgetOptions,
      ),
    );
  }
}
