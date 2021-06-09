import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/types/gender.dart';
import '../../../../core/types/vital_status.dart';
import '../../../../core/util/mapper.dart';
import '../../domain/entities/character.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
abstract class CharacterModel with _$CharacterModel {
  const factory CharacterModel({
    required String id,
    required String name,
    @JsonKey(fromJson: Mapper.statusInType, toJson: Mapper.statusInString, name: 'status')
        required VitalStatus vitalStatus,
    @JsonKey(fromJson: Mapper.genderInType, toJson: Mapper.genderInString)
        required Gender gender,
    required String type,
    required String species,
    required String image,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  factory CharacterModel.fromEntity(Character character) => CharacterModel(
        id: character.id,
        name: character.name,
        vitalStatus: character.vitalStatus,
        gender: character.gender,
        type: character.type,
        species: character.species,
        image: character.image,
      );
}

extension CharacterModelX on CharacterModel {
  Character toEntity() => Character(
        id: id,
        name: name,
        vitalStatus: vitalStatus,
        gender: gender,
        type: type,
        species: species,
        image: image,
      );
}
