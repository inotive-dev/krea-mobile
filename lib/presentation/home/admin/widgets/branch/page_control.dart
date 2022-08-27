import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/domain/entities/home/reports_sales.dart';

class PageControl extends StatelessWidget {
  final ReportsSales? control;
  final Function(int) onUpdate;

  const PageControl({
    Key? key,
    this.control,
    required this.onUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isPrevAllowed = control?.prevPageUrl != null;
    final bool isNextAllowed = control?.nextPageUrl != null;

    String pageInfo = '${control?.from ?? '0'}-${control?.to ?? '0'} of ${control?.total ?? '0'}';

    return Material(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              pageInfo,
              style: TextStyle(
                color: ColorPalettes.blackText,
                fontSize: Sizes.sp14,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          SizedBox(width: Sizes.width24),
          IconButton(
            onPressed: isPrevAllowed
                ? () {
                    final int currentPage = control?.currentPage ?? 1;
                    if (currentPage > 1) {
                      onUpdate(currentPage - 1);
                    }
                  }
                : null,
            icon: Icon(
              Icons.arrow_back_ios,
              size: Sizes.height14,
              color: isPrevAllowed ? Colors.blue : ColorPalettes.grey75,
            ),
          ),
          IconButton(
            onPressed: isNextAllowed
                ? () {
                    final int currentPage = control?.currentPage ?? 1;
                    onUpdate(currentPage + 1);
                  }
                : null,
            icon: Icon(
              Icons.arrow_forward_ios,
              size: Sizes.height14,
              color: isNextAllowed ? Colors.blue : ColorPalettes.grey75,
            ),
          ),
          SizedBox(width: Sizes.width10),
        ],
      ),
    );
  }
}
