import '../types/gender.dart';
import '../types/vital_status.dart';

class Mapper {
  static String genderInString(Gender gender) => gender.when(
        female: () => 'Female',
        genderless: () => 'Genderless',
        male: () => 'Male',
        unknown: () => 'unknown',
      );

  static Gender genderInType(String value) {
    switch (value) {
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

  static String statusInString(VitalStatus vitalStatus) => vitalStatus.when(
        alive: () => 'Alive',
        dead: () => 'Dead',
        unknown: () => 'unknown',
      );

  static VitalStatus statusInType(String value) {
    switch (value) {
      case 'Alive':
        return VitalStatus.alive;
      case 'Dead':
        return VitalStatus.dead;
      default:
        return VitalStatus.unknown;
    }
  }
}
