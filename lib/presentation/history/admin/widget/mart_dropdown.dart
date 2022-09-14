import 'package:flutter/material.dart';

import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';

class MartDropdown extends StatelessWidget {
  final Map value;
  final Function(Map) updateValue;

  final marts = const [
    {'id': 1, 'name': 'Mart Yo'},
    {'id': 2, 'name': 'Mart Alfa'},
    {'id': 3, 'name': 'Mart Indo'},
  ];

  const MartDropdown({
    Key? key,
    required this.value,
    required this.updateValue,
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
        value: marts.firstWhere((element) => element['id'] == value['id']),
        icon: Icon(Icons.keyboard_arrow_down_rounded, size: Sizes.height24),
        elevation: 1,
        underline: const SizedBox(),
        onChanged: (value) {
          updateValue(value as Map);
        },
        items: marts
            .map(
              (e) => DropdownMenuItem(
                child: Text(
                  e['name'].toString(),
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
