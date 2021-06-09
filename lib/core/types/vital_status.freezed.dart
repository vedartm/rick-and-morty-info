// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'vital_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VitalStatusTearOff {
  const _$VitalStatusTearOff();

  Alive alive() {
    return const Alive();
  }

  Dead dead() {
    return const Dead();
  }

  Unknown unknown() {
    return const Unknown();
  }
}

/// @nodoc
const $VitalStatus = _$VitalStatusTearOff();

/// @nodoc
mixin _$VitalStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() alive,
    required TResult Function() dead,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? alive,
    TResult Function()? dead,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Alive value) alive,
    required TResult Function(Dead value) dead,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Alive value)? alive,
    TResult Function(Dead value)? dead,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitalStatusCopyWith<$Res> {
  factory $VitalStatusCopyWith(
          VitalStatus value, $Res Function(VitalStatus) then) =
      _$VitalStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$VitalStatusCopyWithImpl<$Res> implements $VitalStatusCopyWith<$Res> {
  _$VitalStatusCopyWithImpl(this._value, this._then);

  final VitalStatus _value;
  // ignore: unused_field
  final $Res Function(VitalStatus) _then;
}

/// @nodoc
abstract class $AliveCopyWith<$Res> {
  factory $AliveCopyWith(Alive value, $Res Function(Alive) then) =
      _$AliveCopyWithImpl<$Res>;
}

/// @nodoc
class _$AliveCopyWithImpl<$Res> extends _$VitalStatusCopyWithImpl<$Res>
    implements $AliveCopyWith<$Res> {
  _$AliveCopyWithImpl(Alive _value, $Res Function(Alive) _then)
      : super(_value, (v) => _then(v as Alive));

  @override
  Alive get _value => super._value as Alive;
}

/// @nodoc

class _$Alive implements Alive {
  const _$Alive();

  @override
  String toString() {
    return 'VitalStatus.alive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Alive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() alive,
    required TResult Function() dead,
    required TResult Function() unknown,
  }) {
    return alive();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? alive,
    TResult Function()? dead,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (alive != null) {
      return alive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Alive value) alive,
    required TResult Function(Dead value) dead,
    required TResult Function(Unknown value) unknown,
  }) {
    return alive(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Alive value)? alive,
    TResult Function(Dead value)? dead,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (alive != null) {
      return alive(this);
    }
    return orElse();
  }
}

abstract class Alive implements VitalStatus {
  const factory Alive() = _$Alive;
}

/// @nodoc
abstract class $DeadCopyWith<$Res> {
  factory $DeadCopyWith(Dead value, $Res Function(Dead) then) =
      _$DeadCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeadCopyWithImpl<$Res> extends _$VitalStatusCopyWithImpl<$Res>
    implements $DeadCopyWith<$Res> {
  _$DeadCopyWithImpl(Dead _value, $Res Function(Dead) _then)
      : super(_value, (v) => _then(v as Dead));

  @override
  Dead get _value => super._value as Dead;
}

/// @nodoc

class _$Dead implements Dead {
  const _$Dead();

  @override
  String toString() {
    return 'VitalStatus.dead()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Dead);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() alive,
    required TResult Function() dead,
    required TResult Function() unknown,
  }) {
    return dead();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? alive,
    TResult Function()? dead,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (dead != null) {
      return dead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Alive value) alive,
    required TResult Function(Dead value) dead,
    required TResult Function(Unknown value) unknown,
  }) {
    return dead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Alive value)? alive,
    TResult Function(Dead value)? dead,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (dead != null) {
      return dead(this);
    }
    return orElse();
  }
}

abstract class Dead implements VitalStatus {
  const factory Dead() = _$Dead;
}

/// @nodoc
abstract class $UnknownCopyWith<$Res> {
  factory $UnknownCopyWith(Unknown value, $Res Function(Unknown) then) =
      _$UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnknownCopyWithImpl<$Res> extends _$VitalStatusCopyWithImpl<$Res>
    implements $UnknownCopyWith<$Res> {
  _$UnknownCopyWithImpl(Unknown _value, $Res Function(Unknown) _then)
      : super(_value, (v) => _then(v as Unknown));

  @override
  Unknown get _value => super._value as Unknown;
}

/// @nodoc

class _$Unknown implements Unknown {
  const _$Unknown();

  @override
  String toString() {
    return 'VitalStatus.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() alive,
    required TResult Function() dead,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? alive,
    TResult Function()? dead,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Alive value) alive,
    required TResult Function(Dead value) dead,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Alive value)? alive,
    TResult Function(Dead value)? dead,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements VitalStatus {
  const factory Unknown() = _$Unknown;
}
