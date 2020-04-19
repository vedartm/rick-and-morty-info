import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/types/gender.dart';
import '../../../../core/types/vital_status.dart';
import '../../../../core/util/mapper.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
abstract class CharacterModel with _$CharacterModel {
  const factory CharacterModel({
    @required int id,
    @required String name,
    @JsonKey(fromJson: Mapper.statusInType, toJson: Mapper.statusInString)
    @required
        VitalStatus vitalStatus,
    @JsonKey(fromJson: Mapper.genderInType, toJson: Mapper.genderInString)
    @required
        Gender gender,
    @required String type,
    @required String species,
    @required String image,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);
}
