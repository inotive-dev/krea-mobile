import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/presentation/history/admin/widget/history_section.dart';
import 'package:koperasi/presentation/history/admin/widget/mart_dropdown.dart';
import 'package:koperasi/presentation/history/cubit/history_cubit.dart';

import '../../../core/style/sizes.dart';
import '../../core/const/strings.dart';

class HistoryPage extends StatefulWidget {
  final String role;
  const HistoryPage({
    Key? key,
    required this.role,
  }) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final Map _mart = {'id': 1, 'name': 'Mart Alfa'};

  @override
  Widget build(BuildContext context) {
    HistoryController c = Get.put(HistoryController());

    final isAdmin = widget.role == 'admin' ? true : false;
    isAdmin
        ? context.read<HistoryCubit>().getHistoryAdminData(_mart['id'])
        : context.read<HistoryCubit>().getHistoryUserData();

    return Scaffold(
      body: BlocBuilder<HistoryCubit, HistoryState>(
        builder: (context, state) {
          if (isAdmin) {
            return state.getHistoryAdminResultState.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (data) {
                return Container(
                  color: ColorPalettes.greyBackground,
                  child: Builder(
                    builder: (context) {
                      if (state.historyData.thisWeekHistory?.length != 0) {
                        c.changeThisWeekExpanded(false);
                      } else {
                        c.changeThisWeekExpanded(true);
                      }

                      if (state.historyData.lastMonthHistory?.length != 0) {
                        c.changeLastMonthExpanded(true);
                      } else {
                        c.changeLastMonthExpanded(false);
                      }
                      return Obx(
                        () => ListView(
                          padding: EdgeInsets.only(top: Sizes.height20),
                          children: [
                            HistorySection(
                              title: Strings.mingguIni,
                              isExpanded: c.thisWeekExpanded.value,
                              trailing: Container(
                                color: Colors.transparent,
                                height: 36,
                                width: Sizes.width125,
                                child: MartDropdown(
                                  value: state.selectedMart,
                                  updateValue: (value) {
                                    context.read<HistoryCubit>().onUpdateSelectedMart(value);
                                    c.changeLastMonthExpanded(true);
                                    c.changeThisWeekExpanded(true);
                                    c.update();
                                  },
                                ),
                              ),
                              data: state.historyData.thisWeekHistory ?? [],
                              onExpansionChanged: (value) {
                                c.changeThisWeekExpanded(value);
                                c.update();
                              },
                            ),
                            HistorySection(
                              title: Strings.bulanLalu,
                              isExpanded: c.lastMonthExpanded.value,
                              trailing: const SizedBox(),
                              data: state.historyData.lastMonthHistory ?? [],
                              onExpansionChanged: (value) {
                                c.changeLastMonthExpanded(value);
                                c.update();
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
              error: (error) => Center(
                child: Text(Failure.getErrorMessage(error)),
              ),
            );
          } else {
            return state.getHistoryUserResultState.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (data) {
                return Container(
                  color: ColorPalettes.greyBackground,
                  child: Builder(builder: (context) {
                    if (state.historyData.thisWeekHistory?.length != 0) {
                      c.changeThisWeekExpanded(false);
                    } else {
                      c.changeThisWeekExpanded(true);
                    }

                    if (state.historyData.lastMonthHistory?.length != 0) {
                      c.changeLastMonthExpanded(true);
                    } else {
                      c.changeLastMonthExpanded(false);
                    }
                    return Obx(
                      () => ListView(
                        padding: EdgeInsets.only(top: Sizes.height20),
                        children: [
                          HistorySection(
                            title: Strings.mingguIni,
                            isExpanded: c.thisWeekExpanded.value,
                            trailing: const SizedBox(),
                            data: state.historyData.thisWeekHistory ?? [],
                            onExpansionChanged: (value) {
                              c.changeThisWeekExpanded(value);
                              c.update();
                            },
                          ),
                          HistorySection(
                            title: Strings.bulanLalu,
                            isExpanded: c.lastMonthExpanded.value,
                            trailing: const SizedBox(),
                            data: state.historyData.lastMonthHistory ?? [],
                            onExpansionChanged: (value) {
                              c.changeLastMonthExpanded(value);
                              c.update();
                            },
                          ),
                        ],
                      ),
                    );
                  }),
                );
              },
              error: (error) => Center(
                child: Text(Failure.getErrorMessage(error)),
              ),
            );
          }
        },
      ),
    );
  }
}

class HistoryController extends GetxController {
  RxBool thisWeekExpanded = false.obs;
  RxBool lastMonthExpanded = false.obs;

  void changeThisWeekExpanded(bool value) => thisWeekExpanded.value = value;
  void changeLastMonthExpanded(bool value) => lastMonthExpanded.value = value;
}
