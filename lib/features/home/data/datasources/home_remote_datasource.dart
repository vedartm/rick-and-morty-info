import '../models/character_model.dart';
import '../models/episode_model.dart';
import '../models/location_model.dart';

abstract class IHomeRemoteDataSource {
  Future<List<CharacterModel>> getCharacters();

  Future<List<LocationModel>> getLocations();

  Future<List<EpisodeModel>> getEpisodes();
}
