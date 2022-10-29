import 'package:flutter/material.dart';
import 'package:koperasi/core/const/strings.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQRPage extends StatefulWidget {
  static const routeName = '/scan-qr';
  const ScanQRPage({Key? key}) : super(key: key);

  @override
  State<ScanQRPage> createState() => _ScanQRPageState();
}

class _ScanQRPageState extends State<ScanQRPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalettes.greyAppBar,
        title: Text(
          Strings.scanQR,
          style: TextStyle(
            color: ColorPalettes.darkBlue,
            fontSize: Sizes.sp20,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          iconSize: Sizes.width14,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: MobileScanner(
        onDetect: (barcode, args) {
          Navigator.pop(context, barcode.rawValue);
        },
      ),
    );
  }
}
