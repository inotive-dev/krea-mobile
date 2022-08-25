import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koperasi/domain/entities/home/home_data.dart';
import 'package:koperasi/presentation/home/admin/widgets/product_card.dart';
import 'package:koperasi/presentation/home/admin/widgets/list_title.dart';

import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';

class TabReport extends StatelessWidget {
  final HomeData data;

  final double hContent = Sizes.height24;

  TabReport({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int lengthA = data.produkCepatTerjual?.length ?? 0;
    int lengthB = data.produkLamaTerjual?.length ?? 0;

    TabReportController c = Get.put(TabReportController());

    c.changeHeighContent(lengthA * hContent);

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
            child: Builder(
              builder: (context) {
                return Obx(
                  () => Column(
                    children: [
                      SizedBox(
                        height: Sizes.height50,
                        child: TabBar(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.width33),
                          onTap: (index) {
                            c.changeTabIndex(index);
                            if (index == 0) {
                              c.changeHeighContent(lengthA * hContent);
                            } else {
                              c.changeHeighContent(lengthB * hContent);
                            }
                            c.update();
                          },
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
                      Container(
                        child: const ListTitle(),
                        padding: EdgeInsets.symmetric(horizontal: Sizes.width37),
                        margin: EdgeInsets.only(top: Sizes.height30, bottom: Sizes.height16),
                      ),
                      c.tabIndex.value == 0
                          ? Container(
                              height: c.heightContent.value,
                              margin: EdgeInsets.only(bottom: Sizes.height16),
                              child: ListView.separated(
                                itemCount: data.produkCepatTerjual!.length,
                                separatorBuilder: (context, index) => SizedBox(
                                  height: Sizes.height5,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: Sizes.width37,
                                ),
                                itemBuilder: (context, position) {
                                  return ProductCard(
                                    name: data.produkCepatTerjual?[position].product?.name ?? '-',
                                    quantity: data.produkCepatTerjual?[position].totalQty.toString() ?? '-',
                                  );
                                },
                              ),
                            )
                          : Container(
                              height: c.heightContent.value,
                              margin: EdgeInsets.only(bottom: Sizes.height16),
                              child: ListView.separated(
                                itemCount: data.produkLamaTerjual!.length,
                                separatorBuilder: (context, index) => SizedBox(
                                  height: Sizes.height5,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: Sizes.width37,
                                ),
                                itemBuilder: (context, position) {
                                  return ProductCard(
                                    name: data.produkCepatTerjual?[position].product?.name ?? '-',
                                    quantity: data.produkCepatTerjual?[position].totalQty.toString() ?? '-',
                                  );
                                },
                              ),
                            )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TabReportController extends GetxController {
  RxDouble heightContent = Sizes.height120.obs;
  RxInt tabIndex = 0.obs;

  void changeHeighContent(double value) {
    heightContent.value = value > Sizes.height120 ? Sizes.height120 : value;
  }

  void changeTabIndex(int index) => tabIndex.value = index;
}
