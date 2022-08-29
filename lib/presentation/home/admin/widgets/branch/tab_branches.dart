import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/style/sizes.dart';
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
              tabs: const [
                SizedBox(
                  width: 70,
                  child: Tab(
                    text: 'Neraca',
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Tab(
                    text: 'Laba Rugi',
                  ),
                ),
                Tab(
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
                  children: [
                    Expanded(
                      child: YearsDropdown(
                        year: state.year,
                        updateYear: (year) {
                          final index = tabController.index;
                          context.read<HomeCubit>().updateYear(year);
                          if (index == 0) {
                            context.read<HomeCubit>().getHomeDataNeraca();
                          } else if (index == 1) {
                            context.read<HomeCubit>().getHomeDataLabaRugi();
                          } else {
                            print('BELUM ADA API');
                          }
                        },
                      ),
                    ),
                    SizedBox(width: Sizes.width18),
                    Expanded(
                      flex: 2,
                      child: FilterDropdown(
                        index: tabController.index,
                        value: state.type.capitalize(),
                        updateValue: (type) {
                          final index = tabController.index;
                          context.read<HomeCubit>().updateType(type);
                          if (index == 0) {
                            context.read<HomeCubit>().getHomeDataNeraca();
                          } else if (index == 1) {
                            context.read<HomeCubit>().getHomeDataLabaRugi();
                          } else {
                            print('BELUM ADA API');
                          }
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: 240,
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
                      success: (data) => ListView.separated(
                        itemCount: state.neracaData.length,
                        separatorBuilder: (context, index) => Divider(
                          color: ColorPalettes.greyBackground,
                          thickness: Sizes.height9,
                        ),
                        itemBuilder: (context, position) {
                          return BranchCard(branch: state.neracaData[position]);
                        },
                      ),
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
                      success: (data) => ListView.separated(
                        itemCount: state.labaRugiData.length,
                        separatorBuilder: (context, index) => Divider(
                          color: ColorPalettes.greyBackground,
                          thickness: Sizes.height9,
                        ),
                        itemBuilder: (context, position) {
                          return BranchCard(
                            branch: state.labaRugiData[position],
                          );
                        },
                      ),
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
                      success: (data) => ListView.separated(
                        itemCount: state.neracaData.length,
                        separatorBuilder: (context, index) => Divider(
                          color: ColorPalettes.greyBackground,
                          thickness: Sizes.height9,
                        ),
                        itemBuilder: (context, position) {
                          return BranchCard(
                            branch: state.neracaData[position],
                          );
                        },
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
