import 'package:flutter/material.dart';
import 'package:koperasi/domain/entities/home/home_data.dart';
import 'package:koperasi/presentation/home/admin/widgets/product_card.dart';
import 'package:koperasi/presentation/home/admin/widgets/list_title.dart';

import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';

class TabReport extends StatelessWidget {
  final HomeData data;

  const TabReport({
    Key? key,
    required this.data,
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
          DefaultTabController(
            length: 2,
            child: Column(
              children: [
                SizedBox(
                  height: Sizes.height50,
                  child: TabBar(
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
                    tabs: const [
                      Tab(
                        text: 'Cepat Terjual',
                      ),
                      Tab(
                        text: 'Lama Terjual',
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: TabBarView(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Sizes.width37,
                          vertical: Sizes.height16,
                        ),
                        child: Column(
                          children: [
                            const ListTitle(),
                            SizedBox(height: Sizes.height12),
                            Column(
                              children: data.produkCepatTerjual!
                                  .map(
                                    (e) => ProductCard(
                                      name: e.product?.name ?? '-',
                                      quantity: e.totalQty.toString(),
                                    ),
                                  )
                                  .toList(),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Sizes.width37,
                          vertical: Sizes.height16,
                        ),
                        child: Column(
                          children: [
                            const ListTitle(),
                            SizedBox(height: Sizes.height12),
                            Column(
                              children: data.produkLamaTerjual!
                                  .map(
                                    (e) => ProductCard(
                                      name: e.product?.name ?? '-',
                                      quantity: e.totalQty.toString(),
                                    ),
                                  )
                                  .toList(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
