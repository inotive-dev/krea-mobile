import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/domain/entities/home/branch.dart';
import 'package:koperasi/domain/entities/home/home_data.dart';
import 'package:koperasi/domain/entities/home/home_user_data.dart';
import 'package:koperasi/domain/usecases/get_home_admin_laba_rugi_usecase.dart';
import 'package:koperasi/domain/usecases/get_home_admin_neraca_usecase.dart';
import 'package:koperasi/domain/usecases/get_home_admin_usecase.dart';
import 'package:koperasi/domain/usecases/get_home_user_usecase.dart';

import '../../../../../core/unions/result_state.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final GetHomeAdminUseCase _getHomeAdminUseCase;
  final GetHomeUserUseCase _getHomeUserUseCase;
  final GetHomeAdminNeraca _getHomeAdminNeraca;
  final GetHomeAdminLabaRugi _getHomeAdminLabaRugi;

  HomeCubit(
    this._getHomeAdminUseCase,
    this._getHomeUserUseCase,
    this._getHomeAdminNeraca,
    this._getHomeAdminLabaRugi,
  ) : super(HomeState.initial());

  updateMartId(int id) {
    emit(state.copyWith(martId: id));
  }

  updateYear(String year) {
    emit(state.copyWith(year: year));
  }

  updateType(String type) {
    emit(state.copyWith(type: type));
  }

  getHomeAdminData(int page) async {
    emit(state.copyWith(
      getHomeAdminResultState: const ResultState.loading(),
      updateSalesReportState: const ResultState.loading(),
    ));

    final _result = await _getHomeAdminUseCase(GetHomeAdminUseCaseParams(
      martId: state.martId.toString(),
      page: page,
    ));
    _result.fold(
      (l) {
        emit(
          state.copyWith(
            getHomeAdminResultState: ResultState.error(failure: l),
            updateSalesReportState: ResultState.error(failure: l),
          ),
        );
      },
      (r) {
        return emit(
          state.copyWith(
            getHomeAdminResultState: ResultState.success(data: r),
            updateSalesReportState: ResultState.success(data: r),
            homeData: r.data ?? HomeData.initial(),
            lastUpdated: DateTime.now(),
          ),
        );
      },
    );
  }

  updateSalesReportData(int page) async {
    emit(state.copyWith(updateSalesReportState: const ResultState.loading()));

    final _result = await _getHomeAdminUseCase(GetHomeAdminUseCaseParams(
      martId: state.martId.toString(),
      page: page,
    ));
    _result.fold(
      (l) {
        emit(
          state.copyWith(
            updateSalesReportState: ResultState.error(failure: l),
          ),
        );
      },
      (r) {
        return emit(
          state.copyWith(
            updateSalesReportState: ResultState.success(data: r),
            homeData: state.homeData.copyWith(laporanPenjualan: r.data?.laporanPenjualan),
          ),
        );
      },
    );

    Timer(const Duration(seconds: 2), () {
      emit(state.copyWith(updateSalesReportState: const ResultState.success(data: null)));
    });
  }

  getHomeUserData() async {
    emit(state.copyWith(getHomeUserResultState: const ResultState.loading()));

    final _result = await _getHomeUserUseCase(const NoParam());
    _result.fold(
      (l) {
        emit(
          state.copyWith(
            getHomeUserResultState: ResultState.error(failure: l),
          ),
        );
      },
      (r) {
        return emit(
          state.copyWith(
            getHomeUserResultState: ResultState.success(data: r),
            homeUserData: r.data ?? HomeUserData.initial(),
            lastUpdated: DateTime.now(),
          ),
        );
      },
    );
  }

  getHomeDataNeraca() async {
    emit(state.copyWith(getHomeAdminNeracaResultState: const ResultState.loading()));

    final _result = await _getHomeAdminNeraca(GetHomeAdminBranchesUseCaseParams(
      type: state.type,
      year: state.year,
    ));
    _result.fold(
      (l) {
        emit(
          state.copyWith(
            getHomeAdminNeracaResultState: ResultState.error(failure: l),
          ),
        );
      },
      (r) {
        return emit(
          state.copyWith(
            getHomeAdminNeracaResultState: ResultState.success(data: r),
            neracaData: r.data ?? [],
          ),
        );
      },
    );
  }

  getHomeDataLabaRugi() async {
    emit(state.copyWith(getHomeAdminLabaRugiResultState: const ResultState.loading()));

    final _result = await _getHomeAdminLabaRugi(GetHomeAdminBranchesUseCaseParams(
      type: state.type,
      year: state.year,
    ));
    _result.fold(
      (l) {
        emit(
          state.copyWith(
            getHomeAdminLabaRugiResultState: ResultState.error(failure: l),
          ),
        );
      },
      (r) {
        return emit(
          state.copyWith(
            getHomeAdminLabaRugiResultState: ResultState.success(data: r),
            labaRugiData: r.data ?? [],
          ),
        );
      },
    );
  }
}
