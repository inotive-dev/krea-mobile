// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserResponseEntityAdapter extends TypeAdapter<UserResponseEntity> {
  @override
  final int typeId = 7;

  @override
  UserResponseEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserResponseEntity(
      id: fields[0] as int?,
      martId: fields[1] as int?,
      name: fields[2] as String?,
      memberNumber: fields[3] as String?,
      nik: fields[4] as String?,
      gender: fields[5] as String?,
      birthplace: fields[6] as String?,
      birthdate: fields[7] as String?,
      marriageStatus: fields[8] as String?,
      address: fields[9] as String?,
      employeeStatus: fields[10] as String?,
      department: fields[11] as String?,
      email: fields[12] as String?,
      phone: fields[13] as String?,
      emailVerifiedAt: fields[14] as String?,
      avatar: fields[15] as String?,
      app: fields[16] as String?,
      resetToken: fields[17] as String?,
      createdAt: fields[18] as DateTime?,
      updatedAt: fields[19] as DateTime?,
      deleteAt: fields[20] as DateTime?,
      status: fields[21] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserResponseEntity obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.martId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.memberNumber)
      ..writeByte(4)
      ..write(obj.nik)
      ..writeByte(5)
      ..write(obj.gender)
      ..writeByte(6)
      ..write(obj.birthplace)
      ..writeByte(7)
      ..write(obj.birthdate)
      ..writeByte(8)
      ..write(obj.marriageStatus)
      ..writeByte(9)
      ..write(obj.address)
      ..writeByte(10)
      ..write(obj.employeeStatus)
      ..writeByte(11)
      ..write(obj.department)
      ..writeByte(12)
      ..write(obj.email)
      ..writeByte(13)
      ..write(obj.phone)
      ..writeByte(14)
      ..write(obj.emailVerifiedAt)
      ..writeByte(15)
      ..write(obj.avatar)
      ..writeByte(16)
      ..write(obj.app)
      ..writeByte(17)
      ..write(obj.resetToken)
      ..writeByte(18)
      ..write(obj.createdAt)
      ..writeByte(19)
      ..write(obj.updatedAt)
      ..writeByte(20)
      ..write(obj.deleteAt)
      ..writeByte(21)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserResponseEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
