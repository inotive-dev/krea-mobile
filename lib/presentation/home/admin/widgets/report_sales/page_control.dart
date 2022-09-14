import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/domain/entities/home/sales_report_data.dart';
import 'package:koperasi/presentation/home/cubit/home_cubit.dart';

class PageControl extends StatelessWidget {
  const PageControl({Key? key}) : super(key: key);

  String _getPageInfoText(HomeState state) {
    final SalesReportData data = state.salesReportData;
    return '${data.from ?? '0'}-${data.to ?? '0'} of ${data.total ?? '0'}';
  }

  void _updateData(BuildContext context, HomeState state, String action) {
    int currentPage = state.neracaData.currentPage ?? 0;
    final page = action == 'next' ? currentPage + 1 : currentPage - 1;
    context.read<HomeCubit>().getHomeAdminSalesReports(page);
  }

  bool _isAllowed(String action, HomeState state) {
    if (action == 'next') {
      return state.salesReportData.nextPageUrl != null ? true : false;
    } else {
      return state.salesReportData.prevPageUrl != null ? true : false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return Material(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                _getPageInfoText(state),
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
              onPressed: _isAllowed('prev', state) ? () => _updateData(context, state, 'prev') : null,
              icon: Icon(
                Icons.arrow_back_ios,
                size: Sizes.height14,
                color: _isAllowed('prev', state) ? Colors.blue : ColorPalettes.grey75,
              ),
            ),
            IconButton(
              onPressed: _isAllowed('next', state) ? () => _updateData(context, state, 'next') : null,
              icon: Icon(
                Icons.arrow_forward_ios,
                size: Sizes.height14,
                color: _isAllowed('next', state) ? Colors.blue : ColorPalettes.grey75,
              ),
            ),
            SizedBox(width: Sizes.width10),
          ],
        ),
      );
    });
  }
}
