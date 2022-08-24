import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/data/local/local_data_source.dart';
import 'package:koperasi/di/injection_container.dart';
import 'package:koperasi/domain/entities/home/sales_report.dart';
import 'package:koperasi/presentation/history/admin/widget/history_section.dart';
import 'package:koperasi/presentation/history/admin/widget/mart_dropdown.dart';
import 'package:koperasi/presentation/history/cubit/history_cubit.dart';

import '../../../../core/style/sizes.dart';
import '../../../core/const/strings.dart';

class HistoryAdminPage extends StatefulWidget {
  const HistoryAdminPage({Key? key}) : super(key: key);

  @override
  State<HistoryAdminPage> createState() => _HistoryAdminPageState();
}

class _HistoryAdminPageState extends State<HistoryAdminPage> {
  late LocalDataSource _localDataSource;

  bool _thisWeekExpanded = false;
  bool _lastMonthExpanded = false;
  bool _isAdmin = false;
  Map _mart = {'id': 1, 'name': 'Mart Alfa'};
  List<SalesReport> weekly = [
    SalesReport(
        id: 1,
        martId: 1,
        userId: 11,
        total: 50000,
        totalDiscount: 0,
        totalPpn: 0,
        hpp: 0,
        grandTotal: 50000,
        paymentMethod: 'tunai',
        bankName: 'Bank B',
        totalPayment: 50000,
        totalChange: 0,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        updatedAtMobile: null,
        isMatched: null,
        user: null),
    SalesReport(
        id: 2,
        martId: 2,
        userId: 22,
        total: 50000,
        totalDiscount: 0,
        totalPpn: 0,
        hpp: 0,
        grandTotal: 80000,
        paymentMethod: 'tunai',
        bankName: 'Bank B',
        totalPayment: 50000,
        totalChange: 0,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        updatedAtMobile: null,
        isMatched: null,
        user: null),
  ];
  List<SalesReport> lastMonth = [
    SalesReport(
      id: 1,
      martId: 1,
      userId: 11,
      total: 50000,
      totalDiscount: 0,
      totalPpn: 0,
      hpp: 0,
      grandTotal: 150000,
      paymentMethod: 'tunai',
      bankName: 'Bank B',
      totalPayment: 50000,
      totalChange: 0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      updatedAtMobile: null,
      isMatched: null,
      user: null,
    ),
    SalesReport(
      id: 2,
      martId: 2,
      userId: 22,
      total: 50000,
      totalDiscount: 0,
      totalPpn: 0,
      hpp: 0,
      grandTotal: 60000,
      paymentMethod: 'tunai',
      bankName: 'Bank B',
      totalPayment: 50000,
      totalChange: 0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      updatedAtMobile: null,
      isMatched: null,
      user: null,
    ),
  ];

  @override
  void initState() {
    super.initState();

    _localDataSource = getIt.get<LocalDataSource>();
    final role = _localDataSource.getRole();
    setState(() {
      _isAdmin = role == 'admin';
    });

    context.read<HistoryCubit>().getHistoryAdminData(_mart['id']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalettes.greyBackground,
        child: ListView(
          padding: EdgeInsets.only(top: Sizes.height20),
          children: [
            HistorySection(
              title: Strings.mingguIni,
              isExpanded: _thisWeekExpanded,
              trailing: _isAdmin
                  ? Container(
                      color: Colors.transparent,
                      height: 36,
                      width: 121,
                      child: MartDropdown(
                        value: _mart,
                        updateValue: (value) {
                          context.read<HistoryCubit>().getHistoryAdminData(value['id']);
                          setState(() {
                            _mart = value;
                          });
                        },
                      ),
                    )
                  : const SizedBox(),
              data: weekly,
              onExpansionChanged: (expanded) {
                setState(() {
                  _thisWeekExpanded = expanded;
                });
              },
            ),
            HistorySection(
              title: Strings.bulanLalu,
              isExpanded: _lastMonthExpanded,
              trailing: const SizedBox(),
              data: lastMonth,
              onExpansionChanged: (expanded) {
                setState(() {
                  _lastMonthExpanded = expanded;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
