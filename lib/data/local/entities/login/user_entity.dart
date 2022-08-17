import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../domain/entities/login/user.dart';
import '../../hive/hive_type_id.dart';

part 'user_entity.g.dart';

@HiveType(typeId: HiveTypeId.userEntity)
class UserEntity extends Equatable {
  const UserEntity({
    required this.id,
    required this.martId,
    required this.name,
    required this.memberNumber,
    required this.nik,
    required this.gender,
    required this.birthplace,
    required this.birthdate,
    required this.marriageStatus,
    required this.address,
    required this.employeeStatus,
    required this.department,
    required this.email,
    required this.phone,
    required this.emailVerifiedAt,
    required this.avatar,
    required this.app,
    required this.resetToken,
    required this.createdAt,
    required this.updatedAt,
    required this.deleteAt,
    required this.status,
  });

  @HiveField(0)
  final int? id;
  @HiveField(1)
  final int? martId;
  @HiveField(2)
  final String? name;
  @HiveField(3)
  final String? memberNumber;
  @HiveField(4)
  final String? nik;
  @HiveField(5)
  final String? gender;
  @HiveField(6)
  final String? birthplace;
  @HiveField(7)
  final String? birthdate;
  @HiveField(8)
  final String? marriageStatus;
  @HiveField(9)
  final String? address;
  @HiveField(10)
  final String? employeeStatus;
  @HiveField(11)
  final String? department;
  @HiveField(12)
  final String? email;
  @HiveField(13)
  final String? phone;
  @HiveField(14)
  final String? emailVerifiedAt;
  @HiveField(15)
  final String? avatar;
  @HiveField(16)
  final String? app;
  @HiveField(17)
  final String? resetToken;
  @HiveField(18)
  final DateTime? createdAt;
  @HiveField(19)
  final DateTime? updatedAt;
  @HiveField(20)
  final DateTime? deleteAt;
  @HiveField(21)
  final String? status;

  @override
  List<Object?> get props {
    return [
      id,
      martId,
      name,
      memberNumber,
      nik,
      gender,
      birthplace,
      birthdate,
      marriageStatus,
      address,
      employeeStatus,
      department,
      email,
      phone,
      emailVerifiedAt,
      avatar,
      app,
      resetToken,
      createdAt,
      updatedAt,
      deleteAt,
      status,
    ];
  }

  User toDomain() => User(
        id: id,
        martId: martId,
        name: name,
        memberNumber: memberNumber,
        nik: nik,
        gender: gender,
        birthplace: birthplace,
        birthdate: birthdate,
        marriageStatus: marriageStatus,
        address: address,
        employeeStatus: employeeStatus,
        department: department,
        email: email,
        phone: phone,
        emailVerifiedAt: emailVerifiedAt,
        avatar: avatar,
        app: app,
        resetToken: resetToken,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deleteAt: deleteAt,
        status: status,
      );
}
