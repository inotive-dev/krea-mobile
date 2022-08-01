import 'package:flutter/material.dart';

import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';

class HomeSummaryCard extends StatelessWidget {
  const HomeSummaryCard({Key? key, required this.title, required this.amount}) : super(key: key);

  final String? title;
  final String? amount;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Sizes.height106,
        width: double.infinity,
        padding: EdgeInsets.only(top: Sizes.height24, left: Sizes.width28),
        margin: EdgeInsets.only(bottom: Sizes.height24, left: Sizes.width16, right: Sizes.width16),
        decoration: BoxDecoration(
            gradient:  const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  ColorPalettes.bgBlueCard,
                  ColorPalettes.bgBlueCardGradient
                ]
            ),
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
                image: AssetImage('assets/images/wave_bg.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title!, style: TextStyle(color: Colors.white, fontSize: Sizes.sp18, fontWeight: FontWeight.w400)),
            SizedBox(height: Sizes.height9,),
            Text('Rp $amount', style: TextStyle(color: Colors.white, fontSize: Sizes.sp26, fontWeight: FontWeight.w600)),
          ],
        )
    );
  }
}
