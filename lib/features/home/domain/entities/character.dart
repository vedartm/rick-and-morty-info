import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/types/gender.dart';
import '../../../../core/types/vital_status.dart';

part 'character.freezed.dart';

@freezed
class Character with _$Character {
  const factory Character({
    required String id,
    required String name,
    required VitalStatus vitalStatus,
    required Gender gender,
    required String type,
    required String species,
    required String image,
  }) = _Character;
}
