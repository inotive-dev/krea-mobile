import 'package:flutter/material.dart';

import 'package:koperasi/presentation/home/admin/home_admin_page.dart';
import 'package:koperasi/presentation/home/widgets/bottom_nav_bar.dart';

import '../../core/const/strings.dart';
import '../../core/style/color_palettes.dart';
import '../../core/style/sizes.dart';
import '../history/user/history_page.dart';
import '../profile/profile_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final PageController pageController = PageController(initialPage: 0);
  // static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // late final List<Widget> _widgetOptions;
  late final List<PreferredSizeWidget> _widgetAppBar;

  void _onItemTapped(int index) {
    setState(() {
      pageController.jumpToPage(index);
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // setState(() {
    //   _widgetOptions = <Widget>[
    //     widget.role == Role.admin ? const HomeAdmin() : const HomeForUser(),
    //     const HistoryPage(),
    //     const ProfilePage()
    //   ];
    // });
    _widgetAppBar = <PreferredSizeWidget>[
      // widget.role == Role.admin
      //     ? PreferredSize(
      //         child: AppBar(
      //           elevation: 0,
      //           backgroundColor: ColorPalettes.bgBlueAppBar,
      //         ),
      //         preferredSize: Size.fromHeight(Sizes.height1),
      //       )
      //     : PreferredSize(
      //         preferredSize: Size.fromHeight(Sizes.height131),
      //         child: const HomeAppBar(),
      //       ),
      PreferredSize(
        preferredSize: Size.fromHeight(Sizes.height131),
        child: const SizedBox(),
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
    super.initState();
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
        children: const [
          HomeAdminPage(),
          HistoryPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
