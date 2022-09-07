import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koperasi/core/const/strings.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';
import 'package:koperasi/core/utils/utils.dart';
import 'package:koperasi/presentation/home/admin/widgets/branch/row_text.dart';
import 'package:koperasi/presentation/home/admin/widgets/dropdown/filter_dropdown.dart';
import 'package:koperasi/presentation/home/admin/widgets/dropdown/years_dropdown.dart';
import 'package:koperasi/presentation/home/cubit/home_cubit.dart';
import '../../../../../core/extensions/ext.dart';

import 'branch_card.dart';

class TabBranches extends StatelessWidget {
  final TabController tabController;

  const TabBranches({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  _buildFilterContent(BuildContext context, HomeState state) {
    List<Widget> contents = [];

    if (tabController.index == 2) {
      contents.add(
        Container(
          margin: EdgeInsets.only(right: Sizes.width18),
          child: Text(
            Strings.laporanPerubahanModal,
            style: TextStyle(
              color: ColorPalettes.blackText,
              fontWeight: FontWeight.w600,
              fontSize: Sizes.sp16,
            ),
          ),
        ),
      );
    }

    contents.add(
      Expanded(
        child: YearsDropdown(
          year: state.year,
          updateYear: (year) {
            final index = tabController.index;
            context.read<HomeCubit>().updateYear(year);
            if (index == 0) {
              context.read<HomeCubit>().getHomeDataNeraca(1);
            } else if (index == 1) {
              context.read<HomeCubit>().getHomeDataLabaRugi(1);
            } else {
              context.read<HomeCubit>().getHomeDataPerubahanModal(1);
            }
          },
        ),
      ),
    );

    if (tabController.index < 2) {
      contents.add(
        SizedBox(width: Sizes.width18),
      );
      contents.add(
        Expanded(
          flex: 2,
          child: FilterDropdown(
            index: tabController.index,
            value: state.type.capitalize(),
            updateValue: (type) {
              final index = tabController.index;
              context.read<HomeCubit>().updateType(type);
              if (index == 0) {
                context.read<HomeCubit>().getHomeDataNeraca(1);
              } else if (index == 1) {
                context.read<HomeCubit>().getHomeDataLabaRugi(1);
              } else {
                context.read<HomeCubit>().getHomeDataPerubahanModal(1);
              }
            },
          ),
        ),
      );
    }
    return contents;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 16, 41, 0.05),
            offset: Offset(0.0, 1.0),
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: Sizes.height50,
            child: TabBar(
              controller: tabController,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(width: 3, color: ColorPalettes.darkBlue),
                insets: EdgeInsets.symmetric(horizontal: -12.0),
              ),
              indicatorSize: TabBarIndicatorSize.label,
              labelStyle: TextStyle(
                fontSize: Sizes.sp16,
                fontWeight: FontWeight.w500,
              ),
              labelColor: ColorPalettes.darkBlue,
              unselectedLabelColor: ColorPalettes.greyUnselectedTab,
              isScrollable: true,
              tabs: [
                SizedBox(
                  width: Sizes.width74,
                  child: const Tab(
                    text: 'Neraca',
                  ),
                ),
                SizedBox(
                  width: Sizes.width78,
                  child: const Tab(
                    text: 'Laba Rugi',
                  ),
                ),
                const Tab(
                  text: 'Perubahan Modal',
                )
              ],
            ),
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Container(
                color: ColorPalettes.greyBackground,
                padding: EdgeInsets.only(
                  left: Sizes.width18,
                  right: Sizes.width18,
                  top: Sizes.height16,
                  bottom: Sizes.height16,
                ),
                child: Row(
                  children: _buildFilterContent(context, state),
                ),
              );
            },
          ),
          SizedBox(
            height: Sizes.height255,
            child: TabBarView(
              controller: tabController,
              children: [
                BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    return state.getHomeAdminNeracaResultState.when(
                      initial: () => const SizedBox.shrink(),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      success: (data) {
                        if (state.neracaData.data?.isEmpty ?? true) {
                          return Center(
                            child: Text(
                              'No data',
                              style: TextStyle(
                                fontSize: Sizes.sp13,
                                color: ColorPalettes.greyText,
                              ),
                            ),
                          );
                        } else {
                          return ListView.separated(
                            itemCount: state.neracaData.data?.length ?? 0,
                            separatorBuilder: (context, index) => Divider(
                              color: ColorPalettes.greyBackground,
                              thickness: Sizes.height9,
                            ),
                            itemBuilder: (context, position) {
                              return BranchCard(branch: state.neracaData.data![position]);
                            },
                          );
                        }
                      },
                      error: (error) => Center(
                        child: Text(error.toString()),
                      ),
                    );
                  },
                ),
                BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    return state.getHomeAdminLabaRugiResultState.when(
                      initial: () => const SizedBox.shrink(),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      success: (data) {
                        if (state.labaRugiData.data?.isEmpty ?? true) {
                          return Center(
                            child: Text(
                              'No data',
                              style: TextStyle(
                                fontSize: Sizes.sp13,
                                color: ColorPalettes.greyText,
                              ),
                            ),
                          );
                        } else {
                          return ListView.separated(
                            itemCount: state.labaRugiData.data?.length ?? 0,
                            separatorBuilder: (context, index) => Divider(
                              color: ColorPalettes.greyBackground,
                              thickness: Sizes.height9,
                            ),
                            itemBuilder: (context, position) {
                              return BranchCard(
                                branch: state.labaRugiData.data![position],
                              );
                            },
                          );
                        }
                      },
                      error: (error) => Center(
                        child: Text(error.toString()),
                      ),
                    );
                  },
                ),
                BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    return state.getHomeAdminPerubahanModalReportState.when(
                      initial: () => const SizedBox.shrink(),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      success: (data) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            RowText(
                              title: Strings.modalAwal,
                              value: formatToIdr(state.perubahanModalData.modalAwal),
                            ),
                            RowText(
                              title: Strings.labaBersih,
                              value: formatToIdr(state.perubahanModalData.labaBersih),
                            ),
                            RowText(
                              title: '',
                              value: formatToIdr((state.perubahanModalData.total1)),
                            ),
                            RowText(
                              title: Strings.prive,
                              value: formatToIdr(state.perubahanModalData.prive),
                            ),
                            RowText(
                              title: Strings.laba,
                              value: formatToIdr(state.perubahanModalData.labaDitahan),
                            ),
                            RowText(
                              title: Strings.total,
                              value: formatToIdr(state.perubahanModalData.total2),
                            ),
                            RowText(
                              title: Strings.modalAkhir,
                              value: formatToIdr(state.perubahanModalData.modalAkhir),
                            ),
                          ],
                        ),
                      ),
                      error: (error) => Center(
                        child: Text(error.toString()),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
