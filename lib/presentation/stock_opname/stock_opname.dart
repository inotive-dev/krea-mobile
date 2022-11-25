import 'package:data_table_2/data_table_2.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';

import '../../core/style/custom_widget_style.dart';
import '../../core/style/sizes.dart';

class StockOpnamePage extends StatefulWidget {
  static const routeName = '/stock-opname';

  const StockOpnamePage({Key? key}) : super(key: key);

  @override
  State<StockOpnamePage> createState() => _StockOpnamePageState();
}

_onTapFilterDate(BuildContext context, DateTime? previousDate) async {
  final _pickedDate = await showDatePicker(
    context: context,
    initialDate: previousDate ?? DateTime.now(),
    firstDate: DateTime(2020),
    lastDate: DateTime(2100),
    initialEntryMode: DatePickerEntryMode.calendarOnly,
  );

  if (_pickedDate == null || _pickedDate.day == previousDate?.day) return;

  // TODO update state
}

class _StockOpnamePageState extends State<StockOpnamePage> {
  final TextEditingController queryController = TextEditingController();

  _onChangeQuantity(String value) {
    final _debounceDurationInMs = value.isEmpty ? 1000 : 500;
    EasyDebounce.debounce(
      'change-query',
      Duration(milliseconds: _debounceDurationInMs),
      () {
        print('INI: $value');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalettes.greyBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Add New');
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Sizes.width12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => _onTapFilterDate(context, DateTime.now()),
                  child: Container(
                    height: Sizes.height50,
                    width: Sizes.width131,
                    padding: EdgeInsets.symmetric(
                      horizontal: Sizes.width8,
                      vertical: Sizes.height8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Sizes.radius13),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '28/08/2022',
                          style: TextStyle(fontSize: Sizes.sp16),
                        ),
                        Icon(
                          Icons.date_range_outlined,
                          color: ColorPalettes.grey75,
                          size: Sizes.height24,
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Filter');
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.filter_alt_rounded,
                        color: Colors.white,
                        size: Sizes.height24,
                      ),
                      Text(
                        'Filter',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Sizes.sp16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(Sizes.width82, Sizes.height46),
                    elevation: 0,
                    padding: EdgeInsets.symmetric(horizontal: Sizes.width12),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Export Data');
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.download_rounded,
                        color: Colors.white,
                        size: Sizes.height24,
                      ),
                      Text(
                        'Export',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Sizes.sp16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(Sizes.width82, Sizes.height46),
                    elevation: 0,
                    padding: EdgeInsets.symmetric(horizontal: Sizes.width12),
                  ),
                )
              ],
            ),
            SizedBox(height: Sizes.height18),
            Container(
              padding: EdgeInsets.all(Sizes.width12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.radius13),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '28 August 2020',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: Sizes.sp18,
                          color: ColorPalettes.blackText,
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          controller: queryController,
                          style: TextStyle(
                            color: ColorPalettes.textNeutral,
                            fontSize: Sizes.sp14,
                          ),
                          decoration: CustomWidgetStyle.formInputDecoration,
                          onChanged: (value) => _onChangeQuantity(value),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Sizes.height24),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - Sizes.height355,
                    child: DataTable2(
                      columnSpacing: 1,
                      horizontalMargin: 12,
                      minWidth: 650,
                      columns: const [
                        DataColumn2(label: Text("No"), fixedWidth: 50),
                        DataColumn2(label: Text("Nama"), fixedWidth: 100),
                        DataColumn2(label: Text("SKU"), fixedWidth: 100),
                        DataColumn2(label: Text("Opname Gudang"), fixedWidth: 125),
                        DataColumn2(label: Text("Opname Display"), fixedWidth: 125),
                        DataColumn2(label: Text("Variance"), fixedWidth: 100),
                      ],
                      rows: List<DataRow>.generate(
                        20,
                        (index) => DataRow(
                          selected: index == 2,
                          color: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                            if (states.contains(MaterialState.selected)) {
                              return Theme.of(context).colorScheme.primary.withOpacity(0.3);
                            }
                            if (index % 2 == 0) {
                              return Theme.of(context).colorScheme.primary.withOpacity(0.08);
                            }
                            return null; // Use the default value.
                          }),
                          cells: [
                            DataCell(Text("${index + 1}")),
                            DataCell(Text('Produk ${index + 1} MURAH')),
                            DataCell(Text('P00$index')),
                            DataCell(Text('${(15 - (index + 10) % 10)}')),
                            DataCell(Text('${(15 - (index + 10) % 10)}')),
                            DataCell(Text('${(15 - (index + 10) % 10)}')),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
