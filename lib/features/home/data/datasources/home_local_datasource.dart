import '../models/character_model.dart';
import '../models/episode_model.dart';
import '../models/location_model.dart';

abstract class IHomeLocalDataSource {
  List<CharacterModel> getLastCharacters();

  Future<void> cacheCharacters(List<CharacterModel> models);

  List<LocationModel> getLastLocations();

  Future<void> cacheLocations(List<LocationModel> models);

  List<EpisodeModel> getLastEpisodes();

  Future<void> cacheEpisodes(List<EpisodeModel> models);
}
