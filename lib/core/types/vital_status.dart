import 'package:freezed_annotation/freezed_annotation.dart';

part 'vital_status.freezed.dart';

@freezed
abstract class VitalStatus with _$VitalStatus {
  const factory VitalStatus.alive() = Alive;

  const factory VitalStatus.dead() = Dead;

  const factory VitalStatus.unknown() = Unknown;
}
