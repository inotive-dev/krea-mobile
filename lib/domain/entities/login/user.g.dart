// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      martId: json['mart_id'] as int?,
      name: json['name'] as String?,
      memberNumber: json['member_number'] as String?,
      nik: json['nik'] as String?,
      gender: json['gender'] as String?,
      birthplace: json['birthplace'] as String?,
      birthdate: json['birthdate'] as String?,
      marriageStatus: json['marriage_status'] as String?,
      address: json['address'] as String?,
      employeeStatus: json['employee_status'] as String?,
      department: json['department'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      emailVerifiedAt: json['email_verified_at'] as String?,
      avatar: json['avatar'] as String?,
      app: json['app'] as String?,
      resetToken: json['reset_token'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deleteAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'mart_id': instance.martId,
      'name': instance.name,
      'member_number': instance.memberNumber,
      'nik': instance.nik,
      'gender': instance.gender,
      'birthplace': instance.birthplace,
      'birthdate': instance.birthdate,
      'marriage_status': instance.marriageStatus,
      'address': instance.address,
      'employee_status': instance.employeeStatus,
      'department': instance.department,
      'email': instance.email,
      'phone': instance.phone,
      'email_verified_at': instance.emailVerifiedAt,
      'avatar': instance.avatar,
      'app': instance.app,
      'reset_token': instance.resetToken,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deleteAt?.toIso8601String(),
      'status': instance.status,
    };
