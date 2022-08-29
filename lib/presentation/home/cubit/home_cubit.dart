import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/no_param.dart';
import 'package:koperasi/domain/entities/home/branch.dart';
import 'package:koperasi/domain/entities/home/home_data.dart';
import 'package:koperasi/domain/entities/home/home_user_data.dart';
import 'package:koperasi/domain/entities/home/sales_report_data.dart';
import 'package:koperasi/domain/usecases/get_home_admin_laba_rugi_usecase.dart';
import 'package:koperasi/domain/usecases/get_home_admin_neraca_usecase.dart';
import 'package:koperasi/domain/usecases/get_home_admin_sales_reports.dart';
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
  final GetHomeAdminSalesReports _getHomeAdminSalesReports;

  HomeCubit(
    this._getHomeAdminUseCase,
    this._getHomeUserUseCase,
    this._getHomeAdminNeraca,
    this._getHomeAdminLabaRugi,
    this._getHomeAdminSalesReports,
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
            neracaData: r.data ?? [],
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
            labaRugiData: r.data ?? [],
          ),
        );
      },
    );
  }

// SALES REPORTS
  getHomeAdminSalesReports(int page) async {
    bool _isUpdate = state.salesReportData.currentPage! >= 1;
    print('ISUPDATE $_isUpdate - $page');

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
          print('ISUPDATE ${r.data}');
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
}
