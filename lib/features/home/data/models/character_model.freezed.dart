// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) {
  return _CharacterModel.fromJson(json);
}

class _$CharacterModelTearOff {
  const _$CharacterModelTearOff();

  _CharacterModel call(
      {@required
          String id,
      @required
          String name,
      @required
      @JsonKey(fromJson: Mapper.statusInType, toJson: Mapper.statusInString, name: 'status')
          VitalStatus vitalStatus,
      @required
      @JsonKey(fromJson: Mapper.genderInType, toJson: Mapper.genderInString)
          Gender gender,
      @required
          String type,
      @required
          String species,
      @required
          String image}) {
    return _CharacterModel(
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

// ignore: unused_element
const $CharacterModel = _$CharacterModelTearOff();

mixin _$CharacterModel {
  String get id;
  String get name;
  @JsonKey(
      fromJson: Mapper.statusInType,
      toJson: Mapper.statusInString,
      name: 'status')
  VitalStatus get vitalStatus;
  @JsonKey(fromJson: Mapper.genderInType, toJson: Mapper.genderInString)
  Gender get gender;
  String get type;
  String get species;
  String get image;

  Map<String, dynamic> toJson();
  $CharacterModelCopyWith<CharacterModel> get copyWith;
}

abstract class $CharacterModelCopyWith<$Res> {
  factory $CharacterModelCopyWith(
          CharacterModel value, $Res Function(CharacterModel) then) =
      _$CharacterModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: Mapper.statusInType, toJson: Mapper.statusInString, name: 'status')
          VitalStatus vitalStatus,
      @JsonKey(fromJson: Mapper.genderInType, toJson: Mapper.genderInString)
          Gender gender,
      String type,
      String species,
      String image});

  $VitalStatusCopyWith<$Res> get vitalStatus;
  $GenderCopyWith<$Res> get gender;
}

class _$CharacterModelCopyWithImpl<$Res>
    implements $CharacterModelCopyWith<$Res> {
  _$CharacterModelCopyWithImpl(this._value, this._then);

  final CharacterModel _value;
  // ignore: unused_field
  final $Res Function(CharacterModel) _then;

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

abstract class _$CharacterModelCopyWith<$Res>
    implements $CharacterModelCopyWith<$Res> {
  factory _$CharacterModelCopyWith(
          _CharacterModel value, $Res Function(_CharacterModel) then) =
      __$CharacterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: Mapper.statusInType, toJson: Mapper.statusInString, name: 'status')
          VitalStatus vitalStatus,
      @JsonKey(fromJson: Mapper.genderInType, toJson: Mapper.genderInString)
          Gender gender,
      String type,
      String species,
      String image});

  @override
  $VitalStatusCopyWith<$Res> get vitalStatus;
  @override
  $GenderCopyWith<$Res> get gender;
}

class __$CharacterModelCopyWithImpl<$Res>
    extends _$CharacterModelCopyWithImpl<$Res>
    implements _$CharacterModelCopyWith<$Res> {
  __$CharacterModelCopyWithImpl(
      _CharacterModel _value, $Res Function(_CharacterModel) _then)
      : super(_value, (v) => _then(v as _CharacterModel));

  @override
  _CharacterModel get _value => super._value as _CharacterModel;

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
    return _then(_CharacterModel(
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

@JsonSerializable()
class _$_CharacterModel implements _CharacterModel {
  const _$_CharacterModel(
      {@required
          this.id,
      @required
          this.name,
      @required
      @JsonKey(fromJson: Mapper.statusInType, toJson: Mapper.statusInString, name: 'status')
          this.vitalStatus,
      @required
      @JsonKey(fromJson: Mapper.genderInType, toJson: Mapper.genderInString)
          this.gender,
      @required
          this.type,
      @required
          this.species,
      @required
          this.image})
      : assert(id != null),
        assert(name != null),
        assert(vitalStatus != null),
        assert(gender != null),
        assert(type != null),
        assert(species != null),
        assert(image != null);

  factory _$_CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CharacterModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(
      fromJson: Mapper.statusInType,
      toJson: Mapper.statusInString,
      name: 'status')
  final VitalStatus vitalStatus;
  @override
  @JsonKey(fromJson: Mapper.genderInType, toJson: Mapper.genderInString)
  final Gender gender;
  @override
  final String type;
  @override
  final String species;
  @override
  final String image;

  @override
  String toString() {
    return 'CharacterModel(id: $id, name: $name, vitalStatus: $vitalStatus, gender: $gender, type: $type, species: $species, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharacterModel &&
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

  @override
  _$CharacterModelCopyWith<_CharacterModel> get copyWith =>
      __$CharacterModelCopyWithImpl<_CharacterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CharacterModelToJson(this);
  }
}

abstract class _CharacterModel implements CharacterModel {
  const factory _CharacterModel(
      {@required
          String id,
      @required
          String name,
      @required
      @JsonKey(fromJson: Mapper.statusInType, toJson: Mapper.statusInString, name: 'status')
          VitalStatus vitalStatus,
      @required
      @JsonKey(fromJson: Mapper.genderInType, toJson: Mapper.genderInString)
          Gender gender,
      @required
          String type,
      @required
          String species,
      @required
          String image}) = _$_CharacterModel;

  factory _CharacterModel.fromJson(Map<String, dynamic> json) =
      _$_CharacterModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(
      fromJson: Mapper.statusInType,
      toJson: Mapper.statusInString,
      name: 'status')
  VitalStatus get vitalStatus;
  @override
  @JsonKey(fromJson: Mapper.genderInType, toJson: Mapper.genderInString)
  Gender get gender;
  @override
  String get type;
  @override
  String get species;
  @override
  String get image;
  @override
  _$CharacterModelCopyWith<_CharacterModel> get copyWith;
}
