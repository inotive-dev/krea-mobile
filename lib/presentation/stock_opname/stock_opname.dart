import 'package:flutter/material.dart';
import 'package:koperasi/core/style/color_palettes.dart';

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
      body: Padding(
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
                      Container(
                        color: ColorPalettes.greyForm,
                        height: Sizes.height50,
                        width: Sizes.width108,
                      )
                    ],
                  ),
                  SizedBox(height: Sizes.height24),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - Sizes.height355,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        child: DataTable(
                          columns: const [
                            DataColumn(label: Text("No")),
                            DataColumn(label: Text("Nama")),
                            DataColumn(label: Text("SKU")),
                            DataColumn(label: Text("Opname Gudang")),
                            DataColumn(label: Text("Opname Display")),
                          ],
                          rows: const [
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text("1")),
                                DataCell(Text("Kacang")),
                                DataCell(Text("K002C")),
                                DataCell(Text("4")),
                                DataCell(Text("4")),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text("2")),
                                DataCell(Text("Minyak")),
                                DataCell(Text("M002C")),
                                DataCell(Text("4")),
                                DataCell(Text("4")),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text("1")),
                                DataCell(Text("Kacang")),
                                DataCell(Text("K002C")),
                                DataCell(Text("4")),
                                DataCell(Text("4")),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text("2")),
                                DataCell(Text("Minyak")),
                                DataCell(Text("M002C")),
                                DataCell(Text("4")),
                                DataCell(Text("4")),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text("1")),
                                DataCell(Text("Kacang")),
                                DataCell(Text("K002C")),
                                DataCell(Text("4")),
                                DataCell(Text("4")),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text("2")),
                                DataCell(Text("Minyak")),
                                DataCell(Text("M002C")),
                                DataCell(Text("4")),
                                DataCell(Text("4")),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text("1")),
                                DataCell(Text("Kacang")),
                                DataCell(Text("K002C")),
                                DataCell(Text("4")),
                                DataCell(Text("4")),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text("2")),
                                DataCell(Text("Minyak")),
                                DataCell(Text("M002C")),
                                DataCell(Text("4")),
                                DataCell(Text("4")),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text("1")),
                                DataCell(Text("Kacang")),
                                DataCell(Text("K002C")),
                                DataCell(Text("4")),
                                DataCell(Text("4")),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text("2")),
                                DataCell(Text("Minyak")),
                                DataCell(Text("M002C")),
                                DataCell(Text("4")),
                                DataCell(Text("4")),
                              ],
                            ),
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
