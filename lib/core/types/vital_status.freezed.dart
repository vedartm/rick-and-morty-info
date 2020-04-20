// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'vital_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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

// ignore: unused_element
const $VitalStatus = _$VitalStatusTearOff();

mixin _$VitalStatus {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result alive(),
    @required Result dead(),
    @required Result unknown(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result alive(),
    Result dead(),
    Result unknown(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result alive(Alive value),
    @required Result dead(Dead value),
    @required Result unknown(Unknown value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result alive(Alive value),
    Result dead(Dead value),
    Result unknown(Unknown value),
    @required Result orElse(),
  });
}

abstract class $VitalStatusCopyWith<$Res> {
  factory $VitalStatusCopyWith(
          VitalStatus value, $Res Function(VitalStatus) then) =
      _$VitalStatusCopyWithImpl<$Res>;
}

class _$VitalStatusCopyWithImpl<$Res> implements $VitalStatusCopyWith<$Res> {
  _$VitalStatusCopyWithImpl(this._value, this._then);

  final VitalStatus _value;
  // ignore: unused_field
  final $Res Function(VitalStatus) _then;
}

abstract class $AliveCopyWith<$Res> {
  factory $AliveCopyWith(Alive value, $Res Function(Alive) then) =
      _$AliveCopyWithImpl<$Res>;
}

class _$AliveCopyWithImpl<$Res> extends _$VitalStatusCopyWithImpl<$Res>
    implements $AliveCopyWith<$Res> {
  _$AliveCopyWithImpl(Alive _value, $Res Function(Alive) _then)
      : super(_value, (v) => _then(v as Alive));

  @override
  Alive get _value => super._value as Alive;
}

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
  Result when<Result extends Object>({
    @required Result alive(),
    @required Result dead(),
    @required Result unknown(),
  }) {
    assert(alive != null);
    assert(dead != null);
    assert(unknown != null);
    return alive();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result alive(),
    Result dead(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (alive != null) {
      return alive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result alive(Alive value),
    @required Result dead(Dead value),
    @required Result unknown(Unknown value),
  }) {
    assert(alive != null);
    assert(dead != null);
    assert(unknown != null);
    return alive(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result alive(Alive value),
    Result dead(Dead value),
    Result unknown(Unknown value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (alive != null) {
      return alive(this);
    }
    return orElse();
  }
}

abstract class Alive implements VitalStatus {
  const factory Alive() = _$Alive;
}

abstract class $DeadCopyWith<$Res> {
  factory $DeadCopyWith(Dead value, $Res Function(Dead) then) =
      _$DeadCopyWithImpl<$Res>;
}

class _$DeadCopyWithImpl<$Res> extends _$VitalStatusCopyWithImpl<$Res>
    implements $DeadCopyWith<$Res> {
  _$DeadCopyWithImpl(Dead _value, $Res Function(Dead) _then)
      : super(_value, (v) => _then(v as Dead));

  @override
  Dead get _value => super._value as Dead;
}

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
  Result when<Result extends Object>({
    @required Result alive(),
    @required Result dead(),
    @required Result unknown(),
  }) {
    assert(alive != null);
    assert(dead != null);
    assert(unknown != null);
    return dead();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result alive(),
    Result dead(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dead != null) {
      return dead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result alive(Alive value),
    @required Result dead(Dead value),
    @required Result unknown(Unknown value),
  }) {
    assert(alive != null);
    assert(dead != null);
    assert(unknown != null);
    return dead(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result alive(Alive value),
    Result dead(Dead value),
    Result unknown(Unknown value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dead != null) {
      return dead(this);
    }
    return orElse();
  }
}

abstract class Dead implements VitalStatus {
  const factory Dead() = _$Dead;
}

abstract class $UnknownCopyWith<$Res> {
  factory $UnknownCopyWith(Unknown value, $Res Function(Unknown) then) =
      _$UnknownCopyWithImpl<$Res>;
}

class _$UnknownCopyWithImpl<$Res> extends _$VitalStatusCopyWithImpl<$Res>
    implements $UnknownCopyWith<$Res> {
  _$UnknownCopyWithImpl(Unknown _value, $Res Function(Unknown) _then)
      : super(_value, (v) => _then(v as Unknown));

  @override
  Unknown get _value => super._value as Unknown;
}

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
  Result when<Result extends Object>({
    @required Result alive(),
    @required Result dead(),
    @required Result unknown(),
  }) {
    assert(alive != null);
    assert(dead != null);
    assert(unknown != null);
    return unknown();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result alive(),
    Result dead(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result alive(Alive value),
    @required Result dead(Dead value),
    @required Result unknown(Unknown value),
  }) {
    assert(alive != null);
    assert(dead != null);
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result alive(Alive value),
    Result dead(Dead value),
    Result unknown(Unknown value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements VitalStatus {
  const factory Unknown() = _$Unknown;
}
