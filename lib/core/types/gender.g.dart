// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender.dart';

// **************************************************************************
// FunctionalEnumGenerator
// **************************************************************************

extension GenderExtension on Gender {
  bool get isFemale => this == Gender.female;
  bool get isGenderless => this == Gender.genderless;
  bool get isMale => this == Gender.male;
  bool get isUnknown => this == Gender.unknown;
  R map<R>({
    required R Function(Gender female) female,
    required R Function(Gender genderless) genderless,
    required R Function(Gender male) male,
    required R Function(Gender unknown) unknown,
  }) {
    switch (this) {
      case Gender.female:
        return female(this);
      case Gender.genderless:
        return genderless(this);
      case Gender.male:
        return male(this);
      case Gender.unknown:
        return unknown(this);
    }
  }

  R maybeMap<R>({
    R Function(Gender female)? female,
    R Function(Gender genderless)? genderless,
    R Function(Gender male)? male,
    R Function(Gender unknown)? unknown,
    required R Function() orElse,
  }) {
    if (this == Gender.female && female != null) {
      return female(this);
    } else if (this == Gender.genderless && genderless != null) {
      return genderless(this);
    } else if (this == Gender.male && male != null) {
      return male(this);
    } else if (this == Gender.unknown && unknown != null) {
      return unknown(this);
    } else {
      return orElse();
    }
  }

  R maybeWhen<R>({
    R Function()? female,
    R Function()? genderless,
    R Function()? male,
    R Function()? unknown,
    required R Function() orElse,
  }) {
    if (this == Gender.female && female != null) {
      return female();
    } else if (this == Gender.genderless && genderless != null) {
      return genderless();
    } else if (this == Gender.male && male != null) {
      return male();
    } else if (this == Gender.unknown && unknown != null) {
      return unknown();
    } else {
      return orElse();
    }
  }

  R when<R>({
    required R Function() female,
    required R Function() genderless,
    required R Function() male,
    required R Function() unknown,
  }) {
    switch (this) {
      case Gender.female:
        return female();
      case Gender.genderless:
        return genderless();
      case Gender.male:
        return male();
      case Gender.unknown:
        return unknown();
    }
  }
}
