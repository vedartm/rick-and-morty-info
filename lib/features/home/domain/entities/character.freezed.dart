// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CharacterTearOff {
  const _$CharacterTearOff();

// ignore: unused_element
  _Character call(
      {@required String id,
      @required String name,
      @required VitalStatus vitalStatus,
      @required Gender gender,
      @required String type,
      @required String species,
      @required String image}) {
    return _Character(
      id: id,
      name: name,
      vitalStatus: vitalStatus,
      gender: gender,
      type: type,
      species: species,
      image: image,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Character = _$CharacterTearOff();

/// @nodoc
mixin _$Character {
  String get id;
  String get name;
  VitalStatus get vitalStatus;
  Gender get gender;
  String get type;
  String get species;
  String get image;

  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      VitalStatus vitalStatus,
      Gender gender,
      String type,
      String species,
      String image});

  $VitalStatusCopyWith<$Res> get vitalStatus;
  $GenderCopyWith<$Res> get gender;
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res> implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  final Character _value;
  // ignore: unused_field
  final $Res Function(Character) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object vitalStatus = freezed,
    Object gender = freezed,
    Object type = freezed,
    Object species = freezed,
    Object image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      vitalStatus: vitalStatus == freezed
          ? _value.vitalStatus
          : vitalStatus as VitalStatus,
      gender: gender == freezed ? _value.gender : gender as Gender,
      type: type == freezed ? _value.type : type as String,
      species: species == freezed ? _value.species : species as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }

  @override
  $VitalStatusCopyWith<$Res> get vitalStatus {
    if (_value.vitalStatus == null) {
      return null;
    }
    return $VitalStatusCopyWith<$Res>(_value.vitalStatus, (value) {
      return _then(_value.copyWith(vitalStatus: value));
    });
  }

  @override
  $GenderCopyWith<$Res> get gender {
    if (_value.gender == null) {
      return null;
    }
    return $GenderCopyWith<$Res>(_value.gender, (value) {
      return _then(_value.copyWith(gender: value));
    });
  }
}

/// @nodoc
abstract class _$CharacterCopyWith<$Res> implements $CharacterCopyWith<$Res> {
  factory _$CharacterCopyWith(
          _Character value, $Res Function(_Character) then) =
      __$CharacterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      VitalStatus vitalStatus,
      Gender gender,
      String type,
      String species,
      String image});

  @override
  $VitalStatusCopyWith<$Res> get vitalStatus;
  @override
  $GenderCopyWith<$Res> get gender;
}

/// @nodoc
class __$CharacterCopyWithImpl<$Res> extends _$CharacterCopyWithImpl<$Res>
    implements _$CharacterCopyWith<$Res> {
  __$CharacterCopyWithImpl(_Character _value, $Res Function(_Character) _then)
      : super(_value, (v) => _then(v as _Character));

  @override
  _Character get _value => super._value as _Character;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object vitalStatus = freezed,
    Object gender = freezed,
    Object type = freezed,
    Object species = freezed,
    Object image = freezed,
  }) {
    return _then(_Character(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      vitalStatus: vitalStatus == freezed
          ? _value.vitalStatus
          : vitalStatus as VitalStatus,
      gender: gender == freezed ? _value.gender : gender as Gender,
      type: type == freezed ? _value.type : type as String,
      species: species == freezed ? _value.species : species as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

/// @nodoc
class _$_Character implements _Character {
  const _$_Character(
      {@required this.id,
      @required this.name,
      @required this.vitalStatus,
      @required this.gender,
      @required this.type,
      @required this.species,
      @required this.image})
      : assert(id != null),
        assert(name != null),
        assert(vitalStatus != null),
        assert(gender != null),
        assert(type != null),
        assert(species != null),
        assert(image != null);

  @override
  final String id;
  @override
  final String name;
  @override
  final VitalStatus vitalStatus;
  @override
  final Gender gender;
  @override
  final String type;
  @override
  final String species;
  @override
  final String image;

  @override
  String toString() {
    return 'Character(id: $id, name: $name, vitalStatus: $vitalStatus, gender: $gender, type: $type, species: $species, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Character &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.vitalStatus, vitalStatus) ||
                const DeepCollectionEquality()
                    .equals(other.vitalStatus, vitalStatus)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality()
                    .equals(other.species, species)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(vitalStatus) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(species) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$CharacterCopyWith<_Character> get copyWith =>
      __$CharacterCopyWithImpl<_Character>(this, _$identity);
}

abstract class _Character implements Character {
  const factory _Character(
      {@required String id,
      @required String name,
      @required VitalStatus vitalStatus,
      @required Gender gender,
      @required String type,
      @required String species,
      @required String image}) = _$_Character;

  @override
  String get id;
  @override
  String get name;
  @override
  VitalStatus get vitalStatus;
  @override
  Gender get gender;
  @override
  String get type;
  @override
  String get species;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$CharacterCopyWith<_Character> get copyWith;
}
