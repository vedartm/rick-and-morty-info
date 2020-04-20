import '../types/gender.dart';
import '../types/vital_status.dart';

class Mapper {
  static String statusInString(VitalStatus vitalStatus) => vitalStatus.map(
        alive: (e) => 'Alive',
        dead: (e) => 'Dead',
        unknown: (e) => 'unknown',
      );

  static VitalStatus statusInType(String value) {
    switch (value) {
      case 'Alive':
        return VitalStatus.alive();
      case 'Dead':
        return VitalStatus.dead();
      default:
        return VitalStatus.unknown();
    }
  }

  static String genderInString(Gender gender) => gender.map(
        female: (e) => 'Female',
        genderless: (e) => 'Genderless',
        male: (e) => 'Male',
        unknown: (e) => 'unknown',
      );

  static Gender genderInType(String value) {
    switch (value) {
      case 'Female':
        return Gender.female();
      case 'Male':
        return Gender.male();
      case 'Genderless':
        return Gender.genderless();
      default:
        return Gender.unknown();
    }
  }
}
