import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/data/local/entities/history/user_response_entity.dart';

import '../../../../domain/entities/login/user.dart';

part 'user_response.freezed.dart';

part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const UserResponse._();

  const factory UserResponse({
    required int? id,
    @JsonKey(name: 'mart_id') required int? martId,
    required String? name,
    @JsonKey(name: 'member_number') required String? memberNumber,
    required String? nik,
    required String? gender,
    required String? birthplace,
    required String? birthdate,
    @JsonKey(name: 'marriage_status') required String? marriageStatus,
    required String? address,
    @JsonKey(name: 'employee_status') required String? employeeStatus,
    required String? department,
    required String? email,
    required String? phone,
    @JsonKey(name: 'email_verified_at') required String? emailVerifiedAt,
    required String? avatar,
    required String? app,
    @JsonKey(name: 'reset_token') required String? resetToken,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') required DateTime? deleteAt,
    required String? status,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

  UserResponseEntity toEntity() => UserResponseEntity(
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

  UserResponse toDomain() => UserResponse(
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
