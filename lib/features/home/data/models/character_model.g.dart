// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterModel _$_$_CharacterModelFromJson(Map<String, dynamic> json) {
  return _$_CharacterModel(
    id: json['id'] as String,
    name: json['name'] as String,
    vitalStatus: Mapper.statusInType(json['status'] as String),
    gender: Mapper.genderInType(json['gender'] as String),
    type: json['type'] as String,
    species: json['species'] as String,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$_$_CharacterModelToJson(_$_CharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': Mapper.statusInString(instance.vitalStatus),
      'gender': Mapper.genderInString(instance.gender),
      'type': instance.type,
      'species': instance.species,
      'image': instance.image,
    };
