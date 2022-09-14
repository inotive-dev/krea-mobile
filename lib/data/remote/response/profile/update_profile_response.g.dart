// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateProfileResponse _$$_UpdateProfileResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateProfileResponse(
      user: json['user'] == null
          ? null
          : UserResponse.fromJson(json['user'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_UpdateProfileResponseToJson(
        _$_UpdateProfileResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
      'message': instance.message,
    };
