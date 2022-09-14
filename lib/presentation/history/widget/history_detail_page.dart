import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koperasi/core/const/constants.dart';
import 'package:koperasi/core/style/color_palettes.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/core/utils/get_util.dart';
import 'package:koperasi/core/utils/utils.dart';
import 'package:koperasi/core/widgets/my_cached_network_image.dart';
import 'package:koperasi/data/remote/api/endpoint.dart';
import 'package:koperasi/domain/entities/history/history_detail/history_detail.dart';
import 'package:koperasi/presentation/history/cubit/history_cubit.dart';

import '../../../core/const/strings.dart';
import '../../../core/style/sizes.dart';

class HistoryDetailPage extends StatelessWidget {
  static const routeName = '/history-detail';

  const HistoryDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final historyId = GetUtil.getArgument();
    if (historyId != null) {
      context.read<HistoryCubit>().getHistoryDetail(historyId);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Strings.detailHistory,
          style: TextStyle(color: ColorPalettes.darkBlue),
        ),
        backgroundColor: ColorPalettes.greyAppBar,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          iconSize: Sizes.width14,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: BlocBuilder<HistoryCubit, HistoryState>(
        builder: (context, state) {
          return state.getHistoryDetailResultState.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            success: (data) {
              final details = state.historyDetailData;
              return ListView.separated(
                padding: EdgeInsets.all(Sizes.width16),
                itemBuilder: (context, index) {
                  final history = details?[index];
                  return Container(
                    padding: EdgeInsets.all(Sizes.width16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Sizes.radius8),
                    ),
                    child: Row(
                      children: [
                        MyCachedNetworkImage(
                          imageUrl: history?.thumbnail != null
                              ? "${Endpoint.baseUrlImage}${history?.thumbnail}"
                              : Constants.placeholderAvatarUrl,
                          imageBuilder: (context, imageProvider) => Container(
                            width: Sizes.height50,
                            height: Sizes.height50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.radius6),
                              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                            ),
                          ),
                          fit: BoxFit.cover,
                          errorWidget: CircleAvatar(
                            backgroundImage: const NetworkImage(Constants.placeholderAvatarUrl),
                            radius: Sizes.height30,
                          ),
                        ),
                        SizedBox(width: Sizes.width16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              history?.name ?? '-',
                              style: TextStyle(
                                color: ColorPalettes.textGray,
                                fontSize: Sizes.sp16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: Sizes.height4),
                            Text(
                              formatToIdr(history?.subtotal),
                              style: TextStyle(
                                color: ColorPalettes.textGray,
                                fontSize: Sizes.sp16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: Sizes.width12),
                itemCount: state.historyDetailData?.length ?? 0,
              );
            },
            error: (error) => Center(
              child: Text(Failure.getErrorMessage(error)),
            ),
          );
        },
      ),
    );
  }
}
