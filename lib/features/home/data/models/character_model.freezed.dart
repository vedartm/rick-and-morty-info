// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) {
  return _CharacterModel.fromJson(json);
}

/// @nodoc
class _$CharacterModelTearOff {
  const _$CharacterModelTearOff();

  _CharacterModel call(
      {required String id,
      required String name,
      @JsonKey(name: 'status')
      @VitalStatusConverter()
          required VitalStatus vitalStatus,
      @GenderConverter()
          required Gender gender,
      required String type,
      required String species,
      required String image}) {
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

  CharacterModel fromJson(Map<String, Object> json) {
    return CharacterModel.fromJson(json);
  }
}

/// @nodoc
const $CharacterModel = _$CharacterModelTearOff();

/// @nodoc
mixin _$CharacterModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  @VitalStatusConverter()
  VitalStatus get vitalStatus => throw _privateConstructorUsedError;
  @GenderConverter()
  Gender get gender => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterModelCopyWith<CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterModelCopyWith<$Res> {
  factory $CharacterModelCopyWith(
          CharacterModel value, $Res Function(CharacterModel) then) =
      _$CharacterModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'status') @VitalStatusConverter() VitalStatus vitalStatus,
      @GenderConverter() Gender gender,
      String type,
      String species,
      String image});
}

/// @nodoc
class _$CharacterModelCopyWithImpl<$Res>
    implements $CharacterModelCopyWith<$Res> {
  _$CharacterModelCopyWithImpl(this._value, this._then);

  final CharacterModel _value;
  // ignore: unused_field
  final $Res Function(CharacterModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? vitalStatus = freezed,
    Object? gender = freezed,
    Object? type = freezed,
    Object? species = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      vitalStatus: vitalStatus == freezed
          ? _value.vitalStatus
          : vitalStatus // ignore: cast_nullable_to_non_nullable
              as VitalStatus,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CharacterModelCopyWith<$Res>
    implements $CharacterModelCopyWith<$Res> {
  factory _$CharacterModelCopyWith(
          _CharacterModel value, $Res Function(_CharacterModel) then) =
      __$CharacterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'status') @VitalStatusConverter() VitalStatus vitalStatus,
      @GenderConverter() Gender gender,
      String type,
      String species,
      String image});
}

/// @nodoc
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
    Object? id = freezed,
    Object? name = freezed,
    Object? vitalStatus = freezed,
    Object? gender = freezed,
    Object? type = freezed,
    Object? species = freezed,
    Object? image = freezed,
  }) {
    return _then(_CharacterModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      vitalStatus: vitalStatus == freezed
          ? _value.vitalStatus
          : vitalStatus // ignore: cast_nullable_to_non_nullable
              as VitalStatus,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterModel implements _CharacterModel {
  const _$_CharacterModel(
      {required this.id,
      required this.name,
      @JsonKey(name: 'status')
      @VitalStatusConverter()
          required this.vitalStatus,
      @GenderConverter()
          required this.gender,
      required this.type,
      required this.species,
      required this.image});

  factory _$_CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CharacterModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'status')
  @VitalStatusConverter()
  final VitalStatus vitalStatus;
  @override
  @GenderConverter()
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

  @JsonKey(ignore: true)
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
      {required String id,
      required String name,
      @JsonKey(name: 'status')
      @VitalStatusConverter()
          required VitalStatus vitalStatus,
      @GenderConverter()
          required Gender gender,
      required String type,
      required String species,
      required String image}) = _$_CharacterModel;

  factory _CharacterModel.fromJson(Map<String, dynamic> json) =
      _$_CharacterModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status')
  @VitalStatusConverter()
  VitalStatus get vitalStatus => throw _privateConstructorUsedError;
  @override
  @GenderConverter()
  Gender get gender => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get species => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CharacterModelCopyWith<_CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
