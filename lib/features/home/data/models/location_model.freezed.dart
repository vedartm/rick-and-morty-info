// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

class _$LocationModelTearOff {
  const _$LocationModelTearOff();

  _LocationModel call(
      {@required String id,
      @required String name,
      @required String type,
      @required String dimension}) {
    return _LocationModel(
      id: id,
      name: name,
      type: type,
      dimension: dimension,
    );
  }
}

// ignore: unused_element
const $LocationModel = _$LocationModelTearOff();

mixin _$LocationModel {
  String get id;
  String get name;
  String get type;
  String get dimension;

  Map<String, dynamic> toJson();
  $LocationModelCopyWith<LocationModel> get copyWith;
}

abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res>;
  $Res call({String id, String name, String type, String dimension});
}

class _$LocationModelCopyWithImpl<$Res>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  final LocationModel _value;
  // ignore: unused_field
  final $Res Function(LocationModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
    Object dimension = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      dimension: dimension == freezed ? _value.dimension : dimension as String,
    ));
  }
}

abstract class _$LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$LocationModelCopyWith(
          _LocationModel value, $Res Function(_LocationModel) then) =
      __$LocationModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String type, String dimension});
}

class __$LocationModelCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res>
    implements _$LocationModelCopyWith<$Res> {
  __$LocationModelCopyWithImpl(
      _LocationModel _value, $Res Function(_LocationModel) _then)
      : super(_value, (v) => _then(v as _LocationModel));

  @override
  _LocationModel get _value => super._value as _LocationModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
    Object dimension = freezed,
  }) {
    return _then(_LocationModel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      dimension: dimension == freezed ? _value.dimension : dimension as String,
    ));
  }
}

@JsonSerializable()
class _$_LocationModel implements _LocationModel {
  const _$_LocationModel(
      {@required this.id,
      @required this.name,
      @required this.type,
      @required this.dimension})
      : assert(id != null),
        assert(name != null),
        assert(type != null),
        assert(dimension != null);

  factory _$_LocationModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  @override
  final String dimension;

  @override
  String toString() {
    return 'LocationModel(id: $id, name: $name, type: $type, dimension: $dimension)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.dimension, dimension) ||
                const DeepCollectionEquality()
                    .equals(other.dimension, dimension)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(dimension);

  @override
  _$LocationModelCopyWith<_LocationModel> get copyWith =>
      __$LocationModelCopyWithImpl<_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationModelToJson(this);
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      {@required String id,
      @required String name,
      @required String type,
      @required String dimension}) = _$_LocationModel;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$_LocationModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get dimension;
  @override
  _$LocationModelCopyWith<_LocationModel> get copyWith;
}
