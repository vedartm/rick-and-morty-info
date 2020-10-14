import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../models/character_model.dart';
import '../models/episode_model.dart';
import '../models/location_model.dart';

const String CACHED_CHARACTERS = 'CACHED_CHARACTERS';
const String CACHED_EPISODES = 'CACHED_EPISODES';
const String CACHED_LOCATIONS = 'CACHED_LOCATIONS';

abstract class IHomeLocalDataSource {
  List<CharacterModel> getLastCharacters(int page);

  Future<void> cacheCharacters(List<CharacterModel> models, int page);

  List<LocationModel> getLastLocations(int page);

  Future<void> cacheLocations(List<LocationModel> models, int page);

  List<EpisodeModel> getLastEpisodes(int page);

  Future<void> cacheEpisodes(List<EpisodeModel> models, int page);
}

@LazySingleton(as: IHomeLocalDataSource)
class HomeLocalDataSource implements IHomeLocalDataSource {
  HomeLocalDataSource(this._box);

  final Box _box;

  @override
  Future<void> cacheCharacters(List<CharacterModel> models, int page) {
    return _isFirstPage(page)
        ? _box.put(
            CACHED_CHARACTERS,
            json.encode(models.map((e) => e.toJson()).toList()),
          )
        : Future.value();
  }

  @override
  Future<void> cacheEpisodes(List<EpisodeModel> models, int page) {
    return _isFirstPage(page)
        ? _box.put(
            CACHED_EPISODES,
            json.encode(models.map((e) => e.toJson()).toList()),
          )
        : Future.value();
  }

  @override
  Future<void> cacheLocations(List<LocationModel> models, int page) {
    return _isFirstPage(page)
        ? _box.put(
            CACHED_LOCATIONS,
            json.encode(models.map((e) => e.toJson()).toList()),
          )
        : Future.value();
  }

  @override
  List<CharacterModel> getLastCharacters(int page) {
    final modelsString = _box.get(CACHED_CHARACTERS);
    if (modelsString == null) {
      throw CacheException();
    }
    return _isFirstPage(page)
        ? json
            .decode(modelsString)
            .map<CharacterModel>((e) => CharacterModel.fromJson(e))
            .toList()
        : [];
  }

  @override
  List<EpisodeModel> getLastEpisodes(int page) {
    final modelsString = _box.get(CACHED_EPISODES);
    if (modelsString == null) {
      throw CacheException();
    }
    return _isFirstPage(page)
        ? json
            .decode(modelsString)
            .map<EpisodeModel>((e) => EpisodeModel.fromJson(e))
            .toList()
        : [];
  }

  @override
  List<LocationModel> getLastLocations(int page) {
    final modelsString = _box.get(CACHED_LOCATIONS);
    if (modelsString == null) {
      throw CacheException();
    }
    return _isFirstPage(page)
        ? json
            .decode(modelsString)
            .map<LocationModel>((e) => LocationModel.fromJson(e))
            .toList()
        : [];
  }

  bool _isFirstPage(int page) => page == 1;
}
