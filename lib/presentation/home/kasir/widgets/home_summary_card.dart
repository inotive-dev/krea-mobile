import 'package:flutter/material.dart';
import 'package:koperasi/core/utils/utils.dart';

import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';

class HomeSummaryCard extends StatelessWidget {
  const HomeSummaryCard({Key? key, required this.title, required this.amount}) : super(key: key);

  final String? title;
  final String? amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(Sizes.width29),
      margin: EdgeInsets.only(
        bottom: Sizes.height24,
        left: Sizes.width16,
        right: Sizes.width16,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [
          ColorPalettes.bgBlueCard,
          ColorPalettes.bgBlueCardGradient,
        ]),
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('assets/images/wave_bg.png'),
          fit: BoxFit.fitWidth,
          alignment: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: TextStyle(
              color: Colors.white,
              fontSize: Sizes.sp20,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: Sizes.height9,
          ),
          Text(
            formatToIdr(double.parse(amount ?? '0')),
            style: TextStyle(
              color: Colors.white,
              fontSize: Sizes.sp28,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
