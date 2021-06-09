import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_and_morty_info/features/home/domain/entities/episode.dart';
import 'package:rick_and_morty_info/features/home/domain/repositories/i_home_repository.dart';
import 'package:rick_and_morty_info/features/home/domain/usecases/get_episodes_usecase.dart';

class MockHomeRepository extends Mock implements IHomeRepository {}

void main() {
  late MockHomeRepository mockRepository;
  late GetEpisodesUseCase usecase;

  setUp(() {
    mockRepository = MockHomeRepository();
    usecase = GetEpisodesUseCase(mockRepository);
  });

  final tPage = 1;
  final tEpisodes = [
    Episode(
      id: '1',
      name: 'Pilot',
      airDate: 'December 2, 2013',
      episode: 'S01E01',
    )
  ];

  test('should return list of episodes when requested with offset', () async {
    // arrange
    when(() => mockRepository.getEpisodes(tPage))
        .thenAnswer((_) async => await Right(tEpisodes));
    // act
    final result = await usecase(EpisodeParams(tPage));
    // assert
    expect(result, equals(Right(tEpisodes)));
  });
}
