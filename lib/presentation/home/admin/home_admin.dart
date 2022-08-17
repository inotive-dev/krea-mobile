import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/presentation/home/home_app_bar.dart';

import '../../../core/const/strings.dart';
import '../../../core/style/sizes.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({Key? key}) : super(key: key);

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  String dropdownValue = '2022';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //Sliver App Bar
          SliverAppBar(
              leading: Container(),
              pinned: false,
              snap: false,
              floating: false,
              expandedHeight: Sizes.height131,
              flexibleSpace: const HomeAppBar()),

          SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.only(left: Sizes.width19, top: Sizes.height23, bottom: Sizes.height10),
            child: Text(
              Strings.report,
              style: TextStyle(color: ColorPalettes.darkBlue, fontWeight: FontWeight.w500, fontSize: Sizes.sp24),
            ),
          )),

          //Riwayat TabBar
          SliverToBoxAdapter(
            child: SizedBox(
              height: Sizes.height300,
              // child: RiwayaySection(),
            ),
          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: Sizes.height100,
              child: Row(children: [
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['2019', '2020', '2021', '2022'].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
