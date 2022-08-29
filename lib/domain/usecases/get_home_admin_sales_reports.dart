import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/future_usecase.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/domain/entities/home/sales_reports.dart';
import 'package:koperasi/domain/repositories/my_repository.dart';

class GetAdminHomeSalesReportsUseCaseParams extends Equatable {
  final int martId;
  final int page;

  const GetAdminHomeSalesReportsUseCaseParams({
    required this.martId,
    required this.page,
  });

  @override
  List<Object> get props => [
        page,
        martId,
      ];
}

@lazySingleton
class GetHomeAdminSalesReports extends FutureUseCase<SalesReports, GetAdminHomeSalesReportsUseCaseParams> {
  final MyRepository myRepository;

  GetHomeAdminSalesReports({required this.myRepository});

  @override
  Future<Either<Failure, SalesReports>> execute(GetAdminHomeSalesReportsUseCaseParams params) {
    return myRepository.getHomeAdminSalesReports(params);
  }
}
