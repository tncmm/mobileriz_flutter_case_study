// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreedModelImpl _$$BreedModelImplFromJson(Map<String, dynamic> json) =>
    _$BreedModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 1,
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$BreedModelImplToJson(_$BreedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
