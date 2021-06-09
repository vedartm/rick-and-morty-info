import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart' as excptn;
import '../../../../core/util/gql_query.dart';
import '../models/character_model.dart';
import '../models/episode_model.dart';
import '../models/location_model.dart';

abstract class IHomeRemoteDataSource {
  Future<List<CharacterModel>> getCharacters(int page);

  Future<List<LocationModel>> getLocations(int page);

  Future<List<EpisodeModel>> getEpisodes(int page);
}

@LazySingleton(as: IHomeRemoteDataSource)
class HomeRemoteDataSource implements IHomeRemoteDataSource {
  HomeRemoteDataSource(this._client);

  final GraphQLClient _client;

  @override
  Future<List<CharacterModel>> getCharacters(int page) async {
    try {
      final result = await _client.query(QueryOptions(
        document: gql(GqlQuery.charactersQuery),
        variables: {"page": page},
      ));
      if (result.data == null) {
        return [];
      }
      return result.data?['characters']['results']
          .map((e) => CharacterModel.fromJson(e))
          .cast<CharacterModel>()
          .toList();
    } on Exception catch (exception) {
      print(exception);
      throw excptn.ServerException();
    }
  }

  @override
  Future<List<EpisodeModel>> getEpisodes(int page) async {
    try {
      final result = await _client.query(QueryOptions(
        document: gql(GqlQuery.episodesQuery),
        variables: {"page": page},
      ));
      if (result.data == null) {
        return [];
      }
      return result.data?['episodes']['results']
          .map((e) => EpisodeModel.fromJson(e))
          .cast<EpisodeModel>()
          .toList();
    } on Exception catch (exception) {
      print(exception);
      throw excptn.ServerException();
    }
  }

  @override
  Future<List<LocationModel>> getLocations(int page) async {
    try {
      final result = await _client.query(QueryOptions(
        document: gql(GqlQuery.locationsQuery),
        variables: {"page": page},
      ));
      if (result.data == null) {
        return [];
      }
      return result.data?['locations']['results']
          .map((e) => LocationModel.fromJson(e))
          .cast<LocationModel>()
          .toList();
    } on Exception catch (exception) {
      print(exception);
      throw excptn.ServerException();
    }
  }
}
