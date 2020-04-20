import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/episode.dart';
import '../repositories/i_home_repository.dart';

@lazySingleton
class GetEpisodesUseCase extends UseCase<List<Episode>, EpisodeParams> {
  GetEpisodesUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, List<Episode>>> call(EpisodeParams params) {
    return repository.getEpisodes(params.page);
  }
}

class EpisodeParams {
  EpisodeParams(this.page);

  final int page;
}
