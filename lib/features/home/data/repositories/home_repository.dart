import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/character.dart';
import '../../domain/entities/episode.dart';
import '../../domain/entities/location.dart';
import '../../domain/repositories/i_home_repository.dart';
import '../datasources/home_local_datasource.dart';
import '../datasources/home_remote_datasource.dart';
import '../models/character_model.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository(
      this._networkInfo, this._remoteDataSource, this._localDataSource);

  final IHomeLocalDataSource _localDataSource;
  final INetworkInfo _networkInfo;
  final IHomeRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<Character>>> getCharacters(int page) async {
    if (await _networkInfo.isConnected) {
      try {
        final characterModels = await _remoteDataSource.getCharacters(page);
        final characters =
            characterModels.map<Character>((e) => e.toEntity()).toList();
        await _localDataSource.cacheCharacters(characterModels);
        return Right(characters);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final characterModels = _localDataSource.getLastCharacters();
        final characters =
            characterModels.map<Character>((e) => e.toEntity()).toList();
        return Right(characters);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<Episode>>> getEpisodes(int page) {
    // TODO: implement getEpisodes
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Location>>> getLocations(int page) {
    // TODO: implement getLocations
    throw UnimplementedError();
  }
}
