// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LocationTearOff {
  const _$LocationTearOff();

  _Location call(
      {@required int id,
      @required String name,
      @required String type,
      @required String dimension}) {
    return _Location(
      id: id,
      name: name,
      type: type,
      dimension: dimension,
    );
  }
}

// ignore: unused_element
const $Location = _$LocationTearOff();

mixin _$Location {
  int get id;
  String get name;
  String get type;
  String get dimension;

  $LocationCopyWith<Location> get copyWith;
}

abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call({int id, String name, String type, String dimension});
}

class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
    Object dimension = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      dimension: dimension == freezed ? _value.dimension : dimension as String,
    ));
  }
}

abstract class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) =
      __$LocationCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String type, String dimension});
}

class __$LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(_Location _value, $Res Function(_Location) _then)
      : super(_value, (v) => _then(v as _Location));

  @override
  _Location get _value => super._value as _Location;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
    Object dimension = freezed,
  }) {
    return _then(_Location(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      dimension: dimension == freezed ? _value.dimension : dimension as String,
    ));
  }
}

class _$_Location implements _Location {
  const _$_Location(
      {@required this.id,
      @required this.name,
      @required this.type,
      @required this.dimension})
      : assert(id != null),
        assert(name != null),
        assert(type != null),
        assert(dimension != null);

  @override
  final int id;
  @override
  final String name;
  @override
  final String type;
  @override
  final String dimension;

  @override
  String toString() {
    return 'Location(id: $id, name: $name, type: $type, dimension: $dimension)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Location &&
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
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);
}

abstract class _Location implements Location {
  const factory _Location(
      {@required int id,
      @required String name,
      @required String type,
      @required String dimension}) = _$_Location;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get dimension;
  @override
  _$LocationCopyWith<_Location> get copyWith;
}
