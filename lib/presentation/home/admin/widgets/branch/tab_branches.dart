import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/presentation/home/admin/widgets/dropdown/filter_dropdown.dart';
import 'package:koperasi/presentation/home/admin/widgets/dropdown/years_dropdown.dart';

import 'branch_card.dart';

class TabBranches extends StatelessWidget {
  final TabController tabController;

  const TabBranches({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 16, 41, 0.05),
            offset: Offset(0.0, 1.0),
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: Sizes.height50,
            child: TabBar(
              controller: tabController,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(width: 3, color: ColorPalettes.darkBlue),
                insets: EdgeInsets.symmetric(horizontal: -12.0),
              ),
              indicatorSize: TabBarIndicatorSize.label,
              labelStyle: TextStyle(
                fontSize: Sizes.sp16,
                fontWeight: FontWeight.w500,
              ),
              labelColor: ColorPalettes.darkBlue,
              unselectedLabelColor: ColorPalettes.greyUnselectedTab,
              isScrollable: true,
              tabs: const [
                SizedBox(
                  width: 70,
                  child: Tab(
                    text: 'Neraca',
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Tab(
                    text: 'Laba Rugi',
                  ),
                ),
                Tab(
                  text: 'Perubahan Modal',
                )
              ],
            ),
          ),
          Container(
            color: ColorPalettes.greyBackground,
            padding: EdgeInsets.only(
              left: Sizes.width18,
              right: Sizes.width18,
              top: Sizes.height16,
              bottom: Sizes.height16,
            ),
            child: Row(
              children: [
                Expanded(
                  child: YearsDropdown(
                    year: '2022',
                    updateYear: (year) {
                      print(year);
                    },
                  ),
                ),
                SizedBox(width: Sizes.width18),
                Expanded(
                  flex: 2,
                  child: FilterDropdown(
                    value: 'Total Operasional',
                    updateValue: (value) {
                      print(value);
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 240,
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (context, index) => Divider(
                    color: ColorPalettes.greyBackground,
                    thickness: Sizes.height9,
                  ),
                  itemBuilder: (context, position) {
                    return const BranchCard();
                  },
                ),
                ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (context, index) => Divider(
                    color: ColorPalettes.greyBackground,
                    thickness: Sizes.height9,
                  ),
                  itemBuilder: (context, position) {
                    return const BranchCard();
                  },
                ),
                ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (context, index) => Divider(
                    color: ColorPalettes.greyBackground,
                    thickness: Sizes.height9,
                  ),
                  itemBuilder: (context, position) {
                    return const BranchCard();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
