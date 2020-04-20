// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EpisodeModel _$_$_EpisodeModelFromJson(Map<String, dynamic> json) {
  return _$_EpisodeModel(
    id: json['id'] as String,
    name: json['name'] as String,
    airDate: json['air_date'] as String,
    episode: json['episode'] as String,
  );
}

Map<String, dynamic> _$_$_EpisodeModelToJson(_$_EpisodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'air_date': instance.airDate,
      'episode': instance.episode,
    };
