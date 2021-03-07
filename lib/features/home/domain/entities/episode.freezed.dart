// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EpisodeTearOff {
  const _$EpisodeTearOff();

// ignore: unused_element
  _Episode call(
      {@required String id,
      @required String name,
      @required String airDate,
      @required String episode}) {
    return _Episode(
      id: id,
      name: name,
      airDate: airDate,
      episode: episode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Episode = _$EpisodeTearOff();

/// @nodoc
mixin _$Episode {
  String get id;
  String get name;
  String get airDate;
  String get episode;

  @JsonKey(ignore: true)
  $EpisodeCopyWith<Episode> get copyWith;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res>;
  $Res call({String id, String name, String airDate, String episode});
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res> implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  final Episode _value;
  // ignore: unused_field
  final $Res Function(Episode) _then;

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
abstract class _$EpisodeCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$EpisodeCopyWith(_Episode value, $Res Function(_Episode) then) =
      __$EpisodeCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String airDate, String episode});
}

/// @nodoc
class __$EpisodeCopyWithImpl<$Res> extends _$EpisodeCopyWithImpl<$Res>
    implements _$EpisodeCopyWith<$Res> {
  __$EpisodeCopyWithImpl(_Episode _value, $Res Function(_Episode) _then)
      : super(_value, (v) => _then(v as _Episode));

  @override
  _Episode get _value => super._value as _Episode;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object airDate = freezed,
    Object episode = freezed,
  }) {
    return _then(_Episode(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      airDate: airDate == freezed ? _value.airDate : airDate as String,
      episode: episode == freezed ? _value.episode : episode as String,
    ));
  }
}

/// @nodoc
class _$_Episode implements _Episode {
  const _$_Episode(
      {@required this.id,
      @required this.name,
      @required this.airDate,
      @required this.episode})
      : assert(id != null),
        assert(name != null),
        assert(airDate != null),
        assert(episode != null);

  @override
  final String id;
  @override
  final String name;
  @override
  final String airDate;
  @override
  final String episode;

  @override
  String toString() {
    return 'Episode(id: $id, name: $name, airDate: $airDate, episode: $episode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Episode &&
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

  @JsonKey(ignore: true)
  @override
  _$EpisodeCopyWith<_Episode> get copyWith =>
      __$EpisodeCopyWithImpl<_Episode>(this, _$identity);
}

abstract class _Episode implements Episode {
  const factory _Episode(
      {@required String id,
      @required String name,
      @required String airDate,
      @required String episode}) = _$_Episode;

  @override
  String get id;
  @override
  String get name;
  @override
  String get airDate;
  @override
  String get episode;
  @override
  @JsonKey(ignore: true)
  _$EpisodeCopyWith<_Episode> get copyWith;
}
