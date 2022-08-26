import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:koperasi/domain/entities/profile/update_profile.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../repositories/my_repository.dart';

class UpdateProfileUseCaseParams extends Equatable {
  final String name;
  final String email;
  final String password;
  final String phoneNumber;
  final File? imageFile;

  const UpdateProfileUseCaseParams({
    required this.name,
    required this.email,
    required this.password,
    required this.phoneNumber,
    this.imageFile,
  });

  @override
  List<Object?> get props => [name, email, password, imageFile, phoneNumber];
}

@lazySingleton
class UpdateProfileUseCase extends FutureUseCase<UpdateProfile, UpdateProfileUseCaseParams> {
  final MyRepository myRepository;

  UpdateProfileUseCase({required this.myRepository});

  @override
  Future<Either<Failure, UpdateProfile>> execute(UpdateProfileUseCaseParams params) {
    return myRepository.updateProfile(params);
  }
}
