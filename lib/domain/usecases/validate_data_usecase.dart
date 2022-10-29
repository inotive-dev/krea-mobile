import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/core/base/usecase/future_usecase.dart';
import 'package:koperasi/core/unions/failure.dart';
import 'package:koperasi/data/repositories/my_repository_impl.dart';
import 'package:koperasi/domain/entities/home/validate_data/validate_data.dart';

class ValidateDataUseCaseParams extends Equatable {
  final List<Map<String, dynamic>> saldoSimpananWajib;
  final List<Map<String, dynamic>> historyTransaksi;
  final List<Map<String, dynamic>> debts;
  final String endPointUrl;

  const ValidateDataUseCaseParams({
    required this.saldoSimpananWajib,
    required this.historyTransaksi,
    required this.debts,
    required this.endPointUrl,
  });

  @override
  List<Object?> get props => [
        saldoSimpananWajib,
        historyTransaksi,
        debts,
        endPointUrl,
      ];
}

@lazySingleton
class ValidateDataUseCase extends FutureUseCase<ValidateData, ValidateDataUseCaseParams> {
  final MyRepositoryImpl myRepository;

  ValidateDataUseCase({required this.myRepository});

  @override
  Future<Either<Failure, ValidateData>> execute(ValidateDataUseCaseParams params) {
    return myRepository.validateData(params);
  }
}
