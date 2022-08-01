import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({Key? key, this.height}) : super(key: key);
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: height,
      child: SvgPicture.asset(
        'assets/images/intersect.svg',
        fit: BoxFit.fill,
      ),
    );
  }
}
