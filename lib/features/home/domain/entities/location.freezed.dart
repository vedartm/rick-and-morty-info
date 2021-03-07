// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocationTearOff {
  const _$LocationTearOff();

// ignore: unused_element
  _Location call(
      {@required String id,
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

/// @nodoc
// ignore: unused_element
const $Location = _$LocationTearOff();

/// @nodoc
mixin _$Location {
  String get id;
  String get name;
  String get type;
  String get dimension;

  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call({String id, String name, String type, String dimension});
}

/// @nodoc
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
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      dimension: dimension == freezed ? _value.dimension : dimension as String,
    ));
  }
}

/// @nodoc
abstract class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) =
      __$LocationCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String type, String dimension});
}

/// @nodoc
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
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      dimension: dimension == freezed ? _value.dimension : dimension as String,
    ));
  }
}

/// @nodoc
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
  final String id;
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

  @JsonKey(ignore: true)
  @override
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);
}

abstract class _Location implements Location {
  const factory _Location(
      {@required String id,
      @required String name,
      @required String type,
      @required String dimension}) = _$_Location;

  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get dimension;
  @override
  @JsonKey(ignore: true)
  _$LocationCopyWith<_Location> get copyWith;
}
