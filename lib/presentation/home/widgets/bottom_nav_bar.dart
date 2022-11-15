import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/const/strings.dart';
import '../../../core/style/color_palettes.dart';
import '../../../core/style/sizes.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
            child: Icon(
              Icons.qr_code,
              color: Colors.grey,
              size: Sizes.height24,
            ),
          ),
          activeIcon: Padding(
            padding: EdgeInsets.all(Sizes.width5),
            child: Icon(
              Icons.qr_code,
              color: ColorPalettes.primary,
              size: Sizes.height24,
            ),
          ),
          label: Strings.stockOpname,
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
      currentIndex: selectedIndex,
      selectedItemColor: ColorPalettes.primary,
      onTap: onTap,
    );
  }
}
