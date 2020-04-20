import '../models/character_model.dart';
import '../models/episode_model.dart';
import '../models/location_model.dart';

abstract class IHomeRemoteDataSource {
  Future<List<CharacterModel>> getCharacters(int page);

  Future<List<LocationModel>> getLocations(int page);

  Future<List<EpisodeModel>> getEpisodes(int page);
}
