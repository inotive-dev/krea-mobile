import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:koperasi/core/const/enums.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/custom_text_style.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/core/widgets/app_bar_container.dart';
import 'package:koperasi/presentation/history/user/history_page.dart';
import 'package:koperasi/presentation/home/admin/home_admin.dart';

// import 'package:koperasi/presentation/home/history/history_page.dart';
import 'package:koperasi/presentation/home/home_app_bar.dart';
import 'package:koperasi/presentation/home/user/home_for_user.dart';
import 'package:koperasi/presentation/profile/profile_page.dart';

import '../../core/const/strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.role}) : super(key: key);
  final Role role;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  late final List<Widget> _widgetOptions;
  late final List<PreferredSizeWidget> _widgetAppBar;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    setState(() {
      _widgetOptions = <Widget>[
        widget.role == Role.admin ? const HomeAdmin() : const HomeForUser(),
        const HistoryPage(),
        const ProfilePage()
      ];
    });
    _widgetAppBar = <PreferredSizeWidget>[
      widget.role == Role.admin
          ? PreferredSize(
              child: AppBar(
                elevation: 0,
                backgroundColor: ColorPalettes.bgBlueAppBar,
              ),
              preferredSize: Size.fromHeight(Sizes.height1))
          : PreferredSize(
              preferredSize: Size.fromHeight(Sizes.height131),
              child: const HomeAppBar()),
      AppBar(
        backgroundColor: ColorPalettes.greyAppBar,
        title: Text(Strings.history,
            style:
                TextStyle(color: ColorPalettes.darkBlue, fontSize: Sizes.sp18)),
        centerTitle: true,
        elevation: 0,
      ),
      AppBar(
        backgroundColor: ColorPalettes.greyAppBar,
        title: Text(Strings.profile,
            style:
                TextStyle(color: ColorPalettes.darkBlue, fontSize: Sizes.sp18)),
        centerTitle: true,
        elevation: 0,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _widgetAppBar.elementAt(_selectedIndex),
      body: IndexedStack(
        children: _widgetOptions,
        index: _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(color: ColorPalettes.primary),
        unselectedFontSize: Sizes.sp12,
        selectedFontSize: Sizes.sp12,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(Sizes.width5),
              child: SvgPicture.asset('assets/icons/icHomeOff.svg'),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.all(Sizes.width5),
              child: SvgPicture.asset('assets/icons/icHome.svg'),
            ),
            label: Strings.home,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(Sizes.width5),
              child: SvgPicture.asset('assets/icons/icHistoryOff.svg'),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.all(Sizes.width5),
              child: SvgPicture.asset('assets/icons/icHistory.svg'),
            ),
            label: Strings.history,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(Sizes.width5),
              child: SvgPicture.asset('assets/icons/icProfileOff.svg'),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.all(Sizes.width5),
              child: SvgPicture.asset('assets/icons/icProfile.svg'),
            ),
            label: Strings.profile,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorPalettes.primary,
        onTap: _onItemTapped,
      ),
    );
  }
}
