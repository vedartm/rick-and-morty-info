// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'gender.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GenderTearOff {
  const _$GenderTearOff();

  Female female() {
    return const Female();
  }

  Genderless genderless() {
    return const Genderless();
  }

  Male male() {
    return const Male();
  }

  Unknown unknown() {
    return const Unknown();
  }
}

// ignore: unused_element
const $Gender = _$GenderTearOff();

mixin _$Gender {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result female(),
    @required Result genderless(),
    @required Result male(),
    @required Result unknown(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result female(),
    Result genderless(),
    Result male(),
    Result unknown(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result female(Female value),
    @required Result genderless(Genderless value),
    @required Result male(Male value),
    @required Result unknown(Unknown value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result female(Female value),
    Result genderless(Genderless value),
    Result male(Male value),
    Result unknown(Unknown value),
    @required Result orElse(),
  });
}

abstract class $GenderCopyWith<$Res> {
  factory $GenderCopyWith(Gender value, $Res Function(Gender) then) =
      _$GenderCopyWithImpl<$Res>;
}

class _$GenderCopyWithImpl<$Res> implements $GenderCopyWith<$Res> {
  _$GenderCopyWithImpl(this._value, this._then);

  final Gender _value;
  // ignore: unused_field
  final $Res Function(Gender) _then;
}

abstract class $FemaleCopyWith<$Res> {
  factory $FemaleCopyWith(Female value, $Res Function(Female) then) =
      _$FemaleCopyWithImpl<$Res>;
}

class _$FemaleCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
    implements $FemaleCopyWith<$Res> {
  _$FemaleCopyWithImpl(Female _value, $Res Function(Female) _then)
      : super(_value, (v) => _then(v as Female));

  @override
  Female get _value => super._value as Female;
}

class _$Female implements Female {
  const _$Female();

  @override
  String toString() {
    return 'Gender.female()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Female);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result female(),
    @required Result genderless(),
    @required Result male(),
    @required Result unknown(),
  }) {
    assert(female != null);
    assert(genderless != null);
    assert(male != null);
    assert(unknown != null);
    return female();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result female(),
    Result genderless(),
    Result male(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (female != null) {
      return female();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result female(Female value),
    @required Result genderless(Genderless value),
    @required Result male(Male value),
    @required Result unknown(Unknown value),
  }) {
    assert(female != null);
    assert(genderless != null);
    assert(male != null);
    assert(unknown != null);
    return female(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result female(Female value),
    Result genderless(Genderless value),
    Result male(Male value),
    Result unknown(Unknown value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (female != null) {
      return female(this);
    }
    return orElse();
  }
}

abstract class Female implements Gender {
  const factory Female() = _$Female;
}

abstract class $GenderlessCopyWith<$Res> {
  factory $GenderlessCopyWith(
          Genderless value, $Res Function(Genderless) then) =
      _$GenderlessCopyWithImpl<$Res>;
}

class _$GenderlessCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
    implements $GenderlessCopyWith<$Res> {
  _$GenderlessCopyWithImpl(Genderless _value, $Res Function(Genderless) _then)
      : super(_value, (v) => _then(v as Genderless));

  @override
  Genderless get _value => super._value as Genderless;
}

class _$Genderless implements Genderless {
  const _$Genderless();

  @override
  String toString() {
    return 'Gender.genderless()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Genderless);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result female(),
    @required Result genderless(),
    @required Result male(),
    @required Result unknown(),
  }) {
    assert(female != null);
    assert(genderless != null);
    assert(male != null);
    assert(unknown != null);
    return genderless();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result female(),
    Result genderless(),
    Result male(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genderless != null) {
      return genderless();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result female(Female value),
    @required Result genderless(Genderless value),
    @required Result male(Male value),
    @required Result unknown(Unknown value),
  }) {
    assert(female != null);
    assert(genderless != null);
    assert(male != null);
    assert(unknown != null);
    return genderless(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result female(Female value),
    Result genderless(Genderless value),
    Result male(Male value),
    Result unknown(Unknown value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genderless != null) {
      return genderless(this);
    }
    return orElse();
  }
}

abstract class Genderless implements Gender {
  const factory Genderless() = _$Genderless;
}

abstract class $MaleCopyWith<$Res> {
  factory $MaleCopyWith(Male value, $Res Function(Male) then) =
      _$MaleCopyWithImpl<$Res>;
}

class _$MaleCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
    implements $MaleCopyWith<$Res> {
  _$MaleCopyWithImpl(Male _value, $Res Function(Male) _then)
      : super(_value, (v) => _then(v as Male));

  @override
  Male get _value => super._value as Male;
}

class _$Male implements Male {
  const _$Male();

  @override
  String toString() {
    return 'Gender.male()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Male);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result female(),
    @required Result genderless(),
    @required Result male(),
    @required Result unknown(),
  }) {
    assert(female != null);
    assert(genderless != null);
    assert(male != null);
    assert(unknown != null);
    return male();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result female(),
    Result genderless(),
    Result male(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (male != null) {
      return male();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result female(Female value),
    @required Result genderless(Genderless value),
    @required Result male(Male value),
    @required Result unknown(Unknown value),
  }) {
    assert(female != null);
    assert(genderless != null);
    assert(male != null);
    assert(unknown != null);
    return male(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result female(Female value),
    Result genderless(Genderless value),
    Result male(Male value),
    Result unknown(Unknown value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (male != null) {
      return male(this);
    }
    return orElse();
  }
}

abstract class Male implements Gender {
  const factory Male() = _$Male;
}

abstract class $UnknownCopyWith<$Res> {
  factory $UnknownCopyWith(Unknown value, $Res Function(Unknown) then) =
      _$UnknownCopyWithImpl<$Res>;
}

class _$UnknownCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
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
    return 'Gender.unknown()';
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
    @required Result female(),
    @required Result genderless(),
    @required Result male(),
    @required Result unknown(),
  }) {
    assert(female != null);
    assert(genderless != null);
    assert(male != null);
    assert(unknown != null);
    return unknown();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result female(),
    Result genderless(),
    Result male(),
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
    @required Result female(Female value),
    @required Result genderless(Genderless value),
    @required Result male(Male value),
    @required Result unknown(Unknown value),
  }) {
    assert(female != null);
    assert(genderless != null);
    assert(male != null);
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result female(Female value),
    Result genderless(Genderless value),
    Result male(Male value),
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

abstract class Unknown implements Gender {
  const factory Unknown() = _$Unknown;
}
