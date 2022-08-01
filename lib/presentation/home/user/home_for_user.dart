import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/presentation/home/home_app_bar.dart';
import 'package:koperasi/presentation/home/user/widgets/home_summary_card.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../../../core/const/strings.dart';

class HomeForUser extends StatelessWidget {
  const HomeForUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      color: ColorPalettes.bgGrey,
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeSummaryCard(title: Strings.totalSimpananWajib, amount: '1.000.000'),
          HomeSummaryCard(title: Strings.totalSimpananAnda, amount: '1.000.000'),
          HomeSummaryCard(title: Strings.totalUtang, amount: '1.000.000'),
        ],
      ),
    );
  }
}
