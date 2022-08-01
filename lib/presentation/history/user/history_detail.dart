import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';

import '../../../core/const/strings.dart';
import '../../../core/style/sizes.dart';

class HistoryDetail extends StatelessWidget {
  const HistoryDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.detailHistory, style: TextStyle(color: ColorPalettes.darkBlue),),
        backgroundColor: ColorPalettes.greyAppBar,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        color: ColorPalettes.greyBackground,

        child: ListView(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: Sizes.width16, top: Sizes.width16, right: Sizes.width16),
              child: Card(
                child: ListTile(
                  leading: Image.asset('assets/images/dummy_item.png'),
                  title: Text('Minyak Goreng'),
                  subtitle: Text('Rp 50.000'),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: Sizes.width16, top: Sizes.width16, right: Sizes.width16),
              child: Card(
                child: ListTile(
                  leading: Image.asset('assets/images/dummy_item.png'),
                  title: Text('Minyak Goreng'),
                  subtitle: Text('Rp 50.000'),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: Sizes.width16, top: Sizes.width16, right: Sizes.width16),
              child: Card(
                child: ListTile(
                  leading: Image.asset('assets/images/dummy_item.png'),
                  title: Text('Minyak Goreng'),
                  subtitle: Text('Rp 50.000'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
