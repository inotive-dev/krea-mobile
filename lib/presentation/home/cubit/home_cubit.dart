import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/core/utils/get_util.dart';
import 'package:koperasi/data/local/local_data_source.dart';
import 'package:koperasi/domain/entities/home/branches_data.dart';
import 'package:koperasi/domain/entities/home/home_data.dart';
import 'package:koperasi/domain/entities/home/home_user_data.dart';
import 'package:koperasi/domain/entities/home/perubahan_modal/perubahan_modal_data.dart';
import 'package:koperasi/domain/entities/home/sales_report_data.dart';
import 'package:koperasi/domain/usecases/get_home_admin_laba_rugi_usecase.dart';
import 'package:koperasi/domain/usecases/get_home_admin_neraca_usecase.dart';
import 'package:koperasi/domain/usecases/get_home_admin_perubahan_modal_usecase.dart';
import 'package:koperasi/domain/usecases/get_home_admin_sales_reports.dart';
import 'package:koperasi/domain/usecases/get_home_admin_usecase.dart';
import 'package:koperasi/domain/usecases/get_home_user_usecase.dart';
import 'package:koperasi/domain/usecases/validate_data_usecase.dart';

import '../../../../../core/unions/result_state.dart';
import '../../../data/remote/response/home/perubahan_modal/perubahan_modal_data_response.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final GetHomeAdminUseCase _getHomeAdminUseCase;
  final GetHomeUserUseCase _getHomeUserUseCase;
  final GetHomeAdminNeraca _getHomeAdminNeraca;
  final GetHomeAdminLabaRugi _getHomeAdminLabaRugi;
  final GetHomeAdminSalesReports _getHomeAdminSalesReports;
  final GetHomeAdminPerubahanModal _getHomeAdminPerubahanModal;
  final ValidateDataUseCase _validateDataUseCase;
  final LocalDataSource _localDataSource;

  HomeCubit(
    this._getHomeAdminUseCase,
    this._getHomeUserUseCase,
    this._getHomeAdminNeraca,
    this._getHomeAdminLabaRugi,
    this._getHomeAdminSalesReports,
    this._getHomeAdminPerubahanModal,
    this._validateDataUseCase,
    this._localDataSource,
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

  getHomeDataNeraca(int page) async {
    emit(state.copyWith(getHomeAdminNeracaResultState: const ResultState.loading()));

    final _result = await _getHomeAdminNeraca(GetHomeAdminBranchesUseCaseParams(
      type: state.type,
      year: state.year,
      page: page,
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
            neracaData: r.data ?? BranchesData.initial(),
          ),
        );
      },
    );
  }

  getHomeDataLabaRugi(int page) async {
    emit(state.copyWith(getHomeAdminLabaRugiResultState: const ResultState.loading()));

    final _result = await _getHomeAdminLabaRugi(GetHomeAdminBranchesUseCaseParams(
      type: state.type,
      year: state.year,
      page: page,
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
            labaRugiData: r.data ?? BranchesData.initial(),
          ),
        );
      },
    );
  }

  getHomeDataPerubahanModal(int page) async {
    emit(state.copyWith(getHomeAdminPerubahanModalReportState: const ResultState.loading()));

    final _result = await _getHomeAdminPerubahanModal(GetHomeAdminBranchesUseCaseParams(
      type: state.type,
      year: state.year,
      page: page,
    ));

    _result.fold(
      (l) {
        emit(
          state.copyWith(
            getHomeAdminPerubahanModalReportState: ResultState.error(failure: l),
          ),
        );
      },
      (r) {
        return emit(
          state.copyWith(
            getHomeAdminPerubahanModalReportState: ResultState.success(data: r),
            perubahanModalData: r.data ?? PerubahanModalData.initial(),
          ),
        );
      },
    );
  }

// SALES REPORTS
  getHomeAdminSalesReports(int page) async {
    bool _isUpdate = state.salesReportData.currentPage! >= 1;

    if (_isUpdate) {
      emit(state.copyWith(updateSalesReportState: const ResultState.loading()));
    } else {
      emit(state.copyWith(getHomeAdminSalesReportState: const ResultState.loading()));
    }

    final _result = await _getHomeAdminSalesReports(GetAdminHomeSalesReportsUseCaseParams(
      page: page,
      martId: state.martId,
    ));
    _result.fold(
      (l) {
        if (_isUpdate) {
          emit(state.copyWith(updateSalesReportState: ResultState.error(failure: l)));
        } else {
          emit(state.copyWith(getHomeAdminSalesReportState: ResultState.error(failure: l)));
        }
      },
      (r) {
        if (_isUpdate) {
          return emit(
            state.copyWith(
              updateSalesReportState: ResultState.success(data: r),
              salesReportData: r.data ?? SalesReportData.initial(),
            ),
          );
        } else {
          return emit(
            state.copyWith(
              getHomeAdminSalesReportState: ResultState.success(data: r),
              salesReportData: r.data ?? SalesReportData.initial(),
            ),
          );
        }
      },
    );
  }

  // Validate
  validateData(String endPointUrl, List<Map<String, dynamic>> listHist) async {
    emit(state.copyWith(validateDataState: const ResultState.loading()));

    final _result = await _validateDataUseCase(ValidateDataUseCaseParams(
      saldoSimpananWajib: const [],
      historyTransaksi: listHist,
      debts: const [],
      endPointUrl: endPointUrl,
    ));
    _result.fold(
      (l) {
        emit(
          state.copyWith(
            validateDataState: ResultState.error(failure: l),
          ),
        );
      },
      (r) {
        return emit(
          state.copyWith(
            validateDataState: ResultState.success(data: r),
            homeUserData: state.homeUserData.copyWith(
              totalSaldoSimpananUtang: r.data?.newestTotalSaldoSimpananUtang ?? 0,
              totalUtang: r.data?.newestTotalSaldoUtang ?? 0,
            ),
          ),
        );
      },
    );
  }

  // Validate Admin
  validateDataAdmin(String endPointUrl, List<Map<String, dynamic>> listHist) async {
    emit(state.copyWith(validateDataState: const ResultState.loading()));

    final _result = await _validateDataUseCase(ValidateDataUseCaseParams(
      saldoSimpananWajib: const [],
      historyTransaksi: listHist,
      debts: const [],
      endPointUrl: endPointUrl,
    ));
    _result.fold(
      (l) {
        emit(
          state.copyWith(
            validateDataState: ResultState.error(failure: l),
          ),
        );
      },
      (r) {
        return emit(
          state.copyWith(
            validateDataState: ResultState.success(data: r),
            homeData: state.homeData.copyWith(
              totalSaldoSimpananUtang: r.data?.newestTotalSaldoSimpananUtang.toDouble() ?? 0.0,
              totalUtang: r.data?.newestTotalSaldoUtang.toDouble() ?? 0.0,
            ),
          ),
        );
      },
    );
  }

  // QR
  getQRPerubahanModal(Map<String, dynamic> jsonMap) async {
    // emit(state.copyWith(getHomeAdminPerubahanModalReportState: const ResultState.loading()));

    // PerubahanModalDataResponse dataResponse = PerubahanModalDataResponse.fromJson(jsonMap);
    // PerubahanModalData data = dataResponse.toDomain();

    // AlertDialog alert = AlertDialog(
    //   title: const Text("Perubahan Modal Data"),
    //   content: Text(jsonEncode(jsonMap)),
    // );

    // // show the dialog
    // GetUtil.showDialog(
    //   alert,
    // );

    // Timer(const Duration(seconds: 1), () {
    //   return emit(
    //     state.copyWith(
    //       getHomeAdminPerubahanModalReportState: ResultState.success(data: data),
    //       perubahanModalData: data,
    //     ),
    //   );
    // });
    _localDataSource.saveQRPerubahanModal(jsonEncode(jsonMap));
    getHomeDataPerubahanModal(1);
  }

  getQRNeraca(Map<String, dynamic> jsonMap) async {
    _localDataSource.saveQRAdminNeraca(jsonEncode(jsonMap));
    getHomeDataNeraca(1);
  }

  getQRLabaRugi(Map<String, dynamic> jsonMap) async {
    _localDataSource.saveQRLabaRugi(jsonEncode(jsonMap));
    getHomeDataLabaRugi(1);
  }

  getQRProductDetail(Map<String, dynamic> jsonMap) async {
    emit(state.copyWith(getHomeAdminNeracaResultState: const ResultState.loading()));

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Product Detail"),
      content: Text(jsonEncode(jsonMap)),
    );

    // show the dialog
    GetUtil.showDialog(
      alert,
    );

    Timer(const Duration(seconds: 1), () {
      return emit(
        state.copyWith(
          getHomeAdminNeracaResultState: const ResultState.success(data: 'data'),
          // neracaData: data,
        ),
      );
    });
  }
}
