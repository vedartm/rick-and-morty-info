// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vital_status.dart';

// **************************************************************************
// FunctionalEnumGenerator
// **************************************************************************

extension VitalStatusExtension on VitalStatus {
  bool get isAlive => this == VitalStatus.alive;
  bool get isDead => this == VitalStatus.dead;
  bool get isUnknown => this == VitalStatus.unknown;
  R map<R>({
    required R Function(VitalStatus alive) alive,
    required R Function(VitalStatus dead) dead,
    required R Function(VitalStatus unknown) unknown,
  }) {
    switch (this) {
      case VitalStatus.alive:
        return alive(this);
      case VitalStatus.dead:
        return dead(this);
      case VitalStatus.unknown:
        return unknown(this);
    }
  }

  R maybeMap<R>({
    R Function(VitalStatus alive)? alive,
    R Function(VitalStatus dead)? dead,
    R Function(VitalStatus unknown)? unknown,
    required R Function() orElse,
  }) {
    if (this == VitalStatus.alive && alive != null) {
      return alive(this);
    } else if (this == VitalStatus.dead && dead != null) {
      return dead(this);
    } else if (this == VitalStatus.unknown && unknown != null) {
      return unknown(this);
    } else {
      return orElse();
    }
  }

  R maybeWhen<R>({
    R Function()? alive,
    R Function()? dead,
    R Function()? unknown,
    required R Function() orElse,
  }) {
    if (this == VitalStatus.alive && alive != null) {
      return alive();
    } else if (this == VitalStatus.dead && dead != null) {
      return dead();
    } else if (this == VitalStatus.unknown && unknown != null) {
      return unknown();
    } else {
      return orElse();
    }
  }

  R when<R>({
    required R Function() alive,
    required R Function() dead,
    required R Function() unknown,
  }) {
    switch (this) {
      case VitalStatus.alive:
        return alive();
      case VitalStatus.dead:
        return dead();
      case VitalStatus.unknown:
        return unknown();
    }
  }
}
