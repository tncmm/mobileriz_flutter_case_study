// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      accessToken: json['accessToken'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      id: (json['id'] as num).toInt(),
      lastName: json['lastName'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'email': instance.email,
      'firstName': instance.firstName,
      'id': instance.id,
      'lastName': instance.lastName,
      'username': instance.username,
    };
