import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/presentation/history/user/history_detail.dart';
import 'package:koperasi/presentation/history/widgets/history_card.dart';

import '../../../../core/style/sizes.dart';
import '../../../core/const/strings.dart';
class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalettes.greyBackground,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: Sizes.width16, top: Sizes.height24),
              child: Row(
                children: [
                  Text(Strings.mingguIni, style: TextStyle(color: ColorPalettes.blackText, fontSize: Sizes.sp18, fontWeight: FontWeight.w500),),
                  SizedBox(width: Sizes.width15,),
                  Icon(Icons.keyboard_arrow_up_outlined, size: Sizes.sp24,)
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HistoryDetail()));
              },
                child: HistoryCard(dateTime: '13-09-2021 09.00', shopName: 'Kreamart', shopAddress: 'Jl. Flamboyan Raya', totalAmount: '50.000',)),
            InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HistoryDetail()));
                },
                child: HistoryCard(dateTime: '13-09-2021 09.00', shopName: 'Kreamart', shopAddress: 'Jl. Flamboyan Raya', totalAmount: '50.000',)),
            InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HistoryDetail()));
                },
                child: HistoryCard(dateTime: '13-09-2021 09.00', shopName: 'Kreamart', shopAddress: 'Jl. Flamboyan Raya', totalAmount: '50.000',)),
            InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HistoryDetail()));
                },
                child: HistoryCard(dateTime: '13-09-2021 09.00', shopName: 'Kreamart', shopAddress: 'Jl. Flamboyan Raya', totalAmount: '50.000',)),
          ],
        ),
      ),
      // floatingActionButton: Container(
      //   decoration: BoxDecoration(
      //       shape: BoxShape.circle,
      //       border: Border.all(
      //           color: Colors.white, width: 5, style: BorderStyle.solid)),
      //   width: 70,
      //   height: 70,
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //     backgroundColor: ColorPalettes.darkBlue,
      //     child: SvgPicture.asset('assets/icons/icQr.svg'),
      //   ),
      // ),
    );
  }
}
