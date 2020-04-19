import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/character.dart';
import '../entities/episode.dart';
import '../entities/location.dart';

abstract class IHomeRepository {
  Future<Either<Failure, List<Character>>> getCharacters();

  Future<Either<Failure, List<Location>>> getLocations();

  Future<Either<Failure, List<Episode>>> getEpisodes();
}
