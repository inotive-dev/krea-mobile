// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {int? id,
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
      String? status}) {
    return _User(
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

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'mart_id')
  int? get martId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_number')
  String? get memberNumber => throw _privateConstructorUsedError;
  String? get nik => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get birthplace => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'marriage_status')
  String? get marriageStatus => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_status')
  String? get employeeStatus => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get app => throw _privateConstructorUsedError;
  @JsonKey(name: 'reset_token')
  String? get resetToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deleteAt => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int? id,
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
      String? status});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? martId = freezed,
    Object? name = freezed,
    Object? memberNumber = freezed,
    Object? nik = freezed,
    Object? gender = freezed,
    Object? birthplace = freezed,
    Object? birthdate = freezed,
    Object? marriageStatus = freezed,
    Object? address = freezed,
    Object? employeeStatus = freezed,
    Object? department = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? emailVerifiedAt = freezed,
    Object? avatar = freezed,
    Object? app = freezed,
    Object? resetToken = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deleteAt = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      martId: martId == freezed
          ? _value.martId
          : martId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      memberNumber: memberNumber == freezed
          ? _value.memberNumber
          : memberNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthplace: birthplace == freezed
          ? _value.birthplace
          : birthplace // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      marriageStatus: marriageStatus == freezed
          ? _value.marriageStatus
          : marriageStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeStatus: employeeStatus == freezed
          ? _value.employeeStatus
          : employeeStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: emailVerifiedAt == freezed
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      app: app == freezed
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as String?,
      resetToken: resetToken == freezed
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleteAt: deleteAt == freezed
          ? _value.deleteAt
          : deleteAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
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
      String? status});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? martId = freezed,
    Object? name = freezed,
    Object? memberNumber = freezed,
    Object? nik = freezed,
    Object? gender = freezed,
    Object? birthplace = freezed,
    Object? birthdate = freezed,
    Object? marriageStatus = freezed,
    Object? address = freezed,
    Object? employeeStatus = freezed,
    Object? department = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? emailVerifiedAt = freezed,
    Object? avatar = freezed,
    Object? app = freezed,
    Object? resetToken = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deleteAt = freezed,
    Object? status = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      martId: martId == freezed
          ? _value.martId
          : martId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      memberNumber: memberNumber == freezed
          ? _value.memberNumber
          : memberNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      nik: nik == freezed
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthplace: birthplace == freezed
          ? _value.birthplace
          : birthplace // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      marriageStatus: marriageStatus == freezed
          ? _value.marriageStatus
          : marriageStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeStatus: employeeStatus == freezed
          ? _value.employeeStatus
          : employeeStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: emailVerifiedAt == freezed
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      app: app == freezed
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as String?,
      resetToken: resetToken == freezed
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleteAt: deleteAt == freezed
          ? _value.deleteAt
          : deleteAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.id,
      @JsonKey(name: 'mart_id') this.martId,
      this.name,
      @JsonKey(name: 'member_number') this.memberNumber,
      this.nik,
      this.gender,
      this.birthplace,
      this.birthdate,
      @JsonKey(name: 'marriage_status') this.marriageStatus,
      this.address,
      @JsonKey(name: 'employee_status') this.employeeStatus,
      this.department,
      this.email,
      this.phone,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      this.avatar,
      this.app,
      @JsonKey(name: 'reset_token') this.resetToken,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deleteAt,
      this.status});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'mart_id')
  final int? martId;
  @override
  final String? name;
  @override
  @JsonKey(name: 'member_number')
  final String? memberNumber;
  @override
  final String? nik;
  @override
  final String? gender;
  @override
  final String? birthplace;
  @override
  final String? birthdate;
  @override
  @JsonKey(name: 'marriage_status')
  final String? marriageStatus;
  @override
  final String? address;
  @override
  @JsonKey(name: 'employee_status')
  final String? employeeStatus;
  @override
  final String? department;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'email_verified_at')
  final String? emailVerifiedAt;
  @override
  final String? avatar;
  @override
  final String? app;
  @override
  @JsonKey(name: 'reset_token')
  final String? resetToken;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  final DateTime? deleteAt;
  @override
  final String? status;

  @override
  String toString() {
    return 'User(id: $id, martId: $martId, name: $name, memberNumber: $memberNumber, nik: $nik, gender: $gender, birthplace: $birthplace, birthdate: $birthdate, marriageStatus: $marriageStatus, address: $address, employeeStatus: $employeeStatus, department: $department, email: $email, phone: $phone, emailVerifiedAt: $emailVerifiedAt, avatar: $avatar, app: $app, resetToken: $resetToken, createdAt: $createdAt, updatedAt: $updatedAt, deleteAt: $deleteAt, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.martId, martId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.memberNumber, memberNumber) &&
            const DeepCollectionEquality().equals(other.nik, nik) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.birthplace, birthplace) &&
            const DeepCollectionEquality().equals(other.birthdate, birthdate) &&
            const DeepCollectionEquality()
                .equals(other.marriageStatus, marriageStatus) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.employeeStatus, employeeStatus) &&
            const DeepCollectionEquality()
                .equals(other.department, department) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.emailVerifiedAt, emailVerifiedAt) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.app, app) &&
            const DeepCollectionEquality()
                .equals(other.resetToken, resetToken) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deleteAt, deleteAt) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(martId),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(memberNumber),
        const DeepCollectionEquality().hash(nik),
        const DeepCollectionEquality().hash(gender),
        const DeepCollectionEquality().hash(birthplace),
        const DeepCollectionEquality().hash(birthdate),
        const DeepCollectionEquality().hash(marriageStatus),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(employeeStatus),
        const DeepCollectionEquality().hash(department),
        const DeepCollectionEquality().hash(email),
        const DeepCollectionEquality().hash(phone),
        const DeepCollectionEquality().hash(emailVerifiedAt),
        const DeepCollectionEquality().hash(avatar),
        const DeepCollectionEquality().hash(app),
        const DeepCollectionEquality().hash(resetToken),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(deleteAt),
        const DeepCollectionEquality().hash(status)
      ]);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {int? id,
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
      String? status}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'mart_id')
  int? get martId;
  @override
  String? get name;
  @override
  @JsonKey(name: 'member_number')
  String? get memberNumber;
  @override
  String? get nik;
  @override
  String? get gender;
  @override
  String? get birthplace;
  @override
  String? get birthdate;
  @override
  @JsonKey(name: 'marriage_status')
  String? get marriageStatus;
  @override
  String? get address;
  @override
  @JsonKey(name: 'employee_status')
  String? get employeeStatus;
  @override
  String? get department;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt;
  @override
  String? get avatar;
  @override
  String? get app;
  @override
  @JsonKey(name: 'reset_token')
  String? get resetToken;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  DateTime? get deleteAt;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
