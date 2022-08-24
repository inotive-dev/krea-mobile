import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';

import 'history_card.dart';

class HistorySection extends StatelessWidget {
  final String title;
  final bool isExpanded;
  final Widget trailing;
  final List data;
  final Function(bool) onExpansionChanged;

  const HistorySection({
    Key? key,
    required this.title,
    required this.isExpanded,
    required this.trailing,
    required this.data,
    required this.onExpansionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        backgroundColor: ColorPalettes.greyBackground,
        title: Row(
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: ColorPalettes.blackText,
                    fontSize: Sizes.sp18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: Sizes.width8),
                Icon(
                  isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                  color: ColorPalettes.blackText,
                ),
              ],
            ),
          ],
        ),
        trailing: trailing,
        tilePadding: EdgeInsets.symmetric(horizontal: Sizes.width25),
        children: data.map((e) => HistoryCard(data: e)).toList(),
        onExpansionChanged: onExpansionChanged,
      ),
    );
  }
}
