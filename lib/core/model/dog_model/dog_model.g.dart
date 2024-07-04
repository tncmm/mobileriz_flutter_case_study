// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DogModelImpl _$$DogModelImplFromJson(Map<String, dynamic> json) =>
    _$DogModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      breedid: (json['breedid'] as num).toInt(),
      age: (json['age'] as num).toInt(),
      gender: json['gender'] as String,
      description: json['description'] as String,
      size: json['size'] as String,
    );

Map<String, dynamic> _$$DogModelImplToJson(_$DogModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'breedid': instance.breedid,
      'age': instance.age,
      'gender': instance.gender,
      'description': instance.description,
      'size': instance.size,
    };
