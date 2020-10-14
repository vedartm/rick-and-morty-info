// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'episode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EpisodeModel _$EpisodeModelFromJson(Map<String, dynamic> json) {
  return _EpisodeModel.fromJson(json);
}

/// @nodoc
class _$EpisodeModelTearOff {
  const _$EpisodeModelTearOff();

// ignore: unused_element
  _EpisodeModel call(
      {@required String id,
      @required String name,
      @required @JsonKey(name: 'air_date') String airDate,
      @required String episode}) {
    return _EpisodeModel(
      id: id,
      name: name,
      airDate: airDate,
      episode: episode,
    );
  }

// ignore: unused_element
  EpisodeModel fromJson(Map<String, Object> json) {
    return EpisodeModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EpisodeModel = _$EpisodeModelTearOff();

/// @nodoc
mixin _$EpisodeModel {
  String get id;
  String get name;
  @JsonKey(name: 'air_date')
  String get airDate;
  String get episode;

  Map<String, dynamic> toJson();
  $EpisodeModelCopyWith<EpisodeModel> get copyWith;
}

/// @nodoc
abstract class $EpisodeModelCopyWith<$Res> {
  factory $EpisodeModelCopyWith(
          EpisodeModel value, $Res Function(EpisodeModel) then) =
      _$EpisodeModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'air_date') String airDate,
      String episode});
}

/// @nodoc
class _$EpisodeModelCopyWithImpl<$Res> implements $EpisodeModelCopyWith<$Res> {
  _$EpisodeModelCopyWithImpl(this._value, this._then);

  final EpisodeModel _value;
  // ignore: unused_field
  final $Res Function(EpisodeModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object airDate = freezed,
    Object episode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      airDate: airDate == freezed ? _value.airDate : airDate as String,
      episode: episode == freezed ? _value.episode : episode as String,
    ));
  }
}

/// @nodoc
abstract class _$EpisodeModelCopyWith<$Res>
    implements $EpisodeModelCopyWith<$Res> {
  factory _$EpisodeModelCopyWith(
          _EpisodeModel value, $Res Function(_EpisodeModel) then) =
      __$EpisodeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'air_date') String airDate,
      String episode});
}

/// @nodoc
class __$EpisodeModelCopyWithImpl<$Res> extends _$EpisodeModelCopyWithImpl<$Res>
    implements _$EpisodeModelCopyWith<$Res> {
  __$EpisodeModelCopyWithImpl(
      _EpisodeModel _value, $Res Function(_EpisodeModel) _then)
      : super(_value, (v) => _then(v as _EpisodeModel));

  @override
  _EpisodeModel get _value => super._value as _EpisodeModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object airDate = freezed,
    Object episode = freezed,
  }) {
    return _then(_EpisodeModel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      airDate: airDate == freezed ? _value.airDate : airDate as String,
      episode: episode == freezed ? _value.episode : episode as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EpisodeModel implements _EpisodeModel {
  const _$_EpisodeModel(
      {@required this.id,
      @required this.name,
      @required @JsonKey(name: 'air_date') this.airDate,
      @required this.episode})
      : assert(id != null),
        assert(name != null),
        assert(airDate != null),
        assert(episode != null);

  factory _$_EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$_$_EpisodeModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'air_date')
  final String airDate;
  @override
  final String episode;

  @override
  String toString() {
    return 'EpisodeModel(id: $id, name: $name, airDate: $airDate, episode: $episode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EpisodeModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.airDate, airDate) ||
                const DeepCollectionEquality()
                    .equals(other.airDate, airDate)) &&
            (identical(other.episode, episode) ||
                const DeepCollectionEquality().equals(other.episode, episode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(airDate) ^
      const DeepCollectionEquality().hash(episode);

  @override
  _$EpisodeModelCopyWith<_EpisodeModel> get copyWith =>
      __$EpisodeModelCopyWithImpl<_EpisodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EpisodeModelToJson(this);
  }
}

abstract class _EpisodeModel implements EpisodeModel {
  const factory _EpisodeModel(
      {@required String id,
      @required String name,
      @required @JsonKey(name: 'air_date') String airDate,
      @required String episode}) = _$_EpisodeModel;

  factory _EpisodeModel.fromJson(Map<String, dynamic> json) =
      _$_EpisodeModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'air_date')
  String get airDate;
  @override
  String get episode;
  @override
  _$EpisodeModelCopyWith<_EpisodeModel> get copyWith;
}
