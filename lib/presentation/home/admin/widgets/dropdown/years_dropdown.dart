import 'package:flutter/material.dart';

import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';

class YearsDropdown extends StatelessWidget {
  final String year;
  final Function(String) updateYear;

  final years = const [
    "2020",
    "2021",
    "2022",
    "2023",
  ];

  const YearsDropdown({
    Key? key,
    required this.year,
    required this.updateYear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.height36,
      padding: EdgeInsets.symmetric(horizontal: Sizes.width12),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(3)),
        color: Colors.white,
      ),
      child: DropdownButton(
        isExpanded: true,
        value: years.firstWhere((element) => element == year),
        icon: Icon(Icons.keyboard_arrow_down_rounded, size: Sizes.height24),
        elevation: 1,
        underline: const SizedBox(),
        onChanged: (value) {
          updateYear(value as String);
        },
        items: years
            .map(
              (e) => DropdownMenuItem(
                child: Text(
                  e,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Sizes.sp16,
                    color: ColorPalettes.greyText4,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                value: e,
              ),
            )
            .toList(),
      ),
    );
  }
}
