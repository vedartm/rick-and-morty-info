import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/character.dart';
import '../repositories/i_home_repository.dart';

@lazySingleton
class GetCharactersUseCase extends UseCase<List<Character>, CharacterParams> {
  GetCharactersUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, List<Character>>> call(CharacterParams params) {
    return repository.getCharacters(params.page);
  }
}

class CharacterParams {
  CharacterParams(this.page);

  final int page;
}
