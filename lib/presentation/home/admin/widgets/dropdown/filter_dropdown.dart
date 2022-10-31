import 'package:flutter/material.dart';
import 'package:koperasi/core/const/constants.dart';

import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../core/extensions/ext.dart';

class FilterDropdown extends StatelessWidget {
  final int index;
  final String value;
  final Function(String) updateValue;

  const FilterDropdown({
    Key? key,
    required this.index,
    required this.value,
    required this.updateValue,
  }) : super(key: key);

  String getValue() {
    if (index == 0) {
      return Constants.typesNeraca
          .firstWhere((element) => element == value.toLowerCase(), orElse: () => Constants.typesNeraca[0]);
    } else if (index == 1) {
      return Constants.typesLabaRugi
          .firstWhere((element) => element == value.toLowerCase(), orElse: () => Constants.typesLabaRugi[0]);
    } else {
      return '';
    }
  }

  List getList() {
    if (index == 0) {
      return Constants.typesNeraca;
    } else if (index == 1) {
      return Constants.typesLabaRugi;
    } else {
      return [];
    }
  }

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
        value: getValue(),
        icon: Icon(Icons.keyboard_arrow_down_rounded, size: Sizes.height24),
        elevation: 1,
        underline: const SizedBox(),
        onChanged: (value) {
          updateValue(value as String);
        },
        items: getList()
            .map(
              (e) => DropdownMenuItem(
                child: Text(
                  e.toString().capitalize(),
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Sizes.sp16,
                    color: ColorPalettes.greyText4,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                value: e,
              ),
            )
            .toList(),
      ),
    );
  }
}
