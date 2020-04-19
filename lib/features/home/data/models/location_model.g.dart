// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationModel _$_$_LocationModelFromJson(Map<String, dynamic> json) {
  return _$_LocationModel(
    id: json['id'] as int,
    name: json['name'] as String,
    type: json['type'] as String,
    dimension: json['dimension'] as String,
  );
}

Map<String, dynamic> _$_$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'dimension': instance.dimension,
    };
