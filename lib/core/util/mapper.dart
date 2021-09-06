import 'package:freezed_annotation/freezed_annotation.dart';

import '../types/gender.dart';
import '../types/vital_status.dart';

class GenderConverter implements JsonConverter<Gender, String> {
  const GenderConverter();

  @override
  Gender fromJson(String json) {
    switch (json) {
      case 'Female':
        return Gender.female;
      case 'Male':
        return Gender.male;
      case 'Genderless':
        return Gender.genderless;
      default:
        return Gender.unknown;
    }
  }

  @override
  String toJson(Gender object) {
    return object.when(
      female: () => 'Female',
      genderless: () => 'Genderless',
      male: () => 'Male',
      unknown: () => 'unknown',
    );
  }
}

class VitalStatusConverter implements JsonConverter<VitalStatus, String> {
  const VitalStatusConverter();

  @override
  VitalStatus fromJson(String json) {
    switch (json) {
      case 'Alive':
        return VitalStatus.alive;
      case 'Dead':
        return VitalStatus.dead;
      default:
        return VitalStatus.unknown;
    }
  }

  @override
  String toJson(VitalStatus object) {
    return object.when(
      alive: () => 'Alive',
      dead: () => 'Dead',
      unknown: () => 'unknown',
    );
  }
}
