import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender.freezed.dart';

@freezed
abstract class Gender with _$Gender {
  const factory Gender.female() = Female;

  const factory Gender.genderless() = Genderless;

  const factory Gender.male() = Male;

  const factory Gender.unknown() = Unknown;
}
