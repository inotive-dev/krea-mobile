import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    int? id,
    @JsonKey(name: 'mart_id') int? martId,
    String? name,
    @JsonKey(name: 'member_number') String? memberNumber,
    String? nik,
    String? gender,
    String? birthplace,
    String? birthdate,
    @JsonKey(name: 'marriage_status') String? marriageStatus,
    String? address,
    @JsonKey(name: 'employee_status') String? employeeStatus,
    String? department,
    String? email,
    String? phone,
    @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    String? avatar,
    String? app,
    @JsonKey(name: 'reset_token') String? resetToken,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deleteAt,
    String? status,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);
}
