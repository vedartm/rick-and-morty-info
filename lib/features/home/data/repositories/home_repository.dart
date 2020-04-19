import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/character.dart';
import '../../domain/entities/episode.dart';
import '../../domain/entities/location.dart';
import '../../domain/repositories/i_home_repository.dart';

class HomeRepository implements IHomeRepository {
  @override
  Future<Either<Failure, List<Character>>> getCharacters() {
    // TODO: implement getCharacters
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Episode>>> getEpisodes() {
    // TODO: implement getEpisodes
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Location>>> getLocations() {
    // TODO: implement getLocations
    throw UnimplementedError();
  }
}
