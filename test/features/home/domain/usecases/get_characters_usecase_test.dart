import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rick_and_morty_info/core/types/gender.dart';
import 'package:rick_and_morty_info/core/types/vital_status.dart';
import 'package:rick_and_morty_info/features/home/domain/entities/character.dart';
import 'package:rick_and_morty_info/features/home/domain/repositories/i_home_repository.dart';
import 'package:rick_and_morty_info/features/home/domain/usecases/get_characters_usecase.dart';

class MockHomeRepository extends Mock implements IHomeRepository {}

void main() {
  MockHomeRepository mockRepository;
  GetCharactersUseCase usecase;

  setUp(() {
    mockRepository = MockHomeRepository();
    usecase = GetCharactersUseCase(mockRepository);
  });

  final tCharacters = [
    Character(
      id: 1,
      name: 'Rick Sanchez',
      vitalStatus: const VitalStatus.alive(),
      gender: const Gender.male(),
      type: '',
      species: 'Human',
      image: 'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
    )
  ];

  test('should return list of characters when requested with offset', () async {
    // arrange
    when(mockRepository.getCharacters())
        .thenAnswer((_) async => await Right(tCharacters));
    // act
    final result = await usecase(CharacterParams(1));
    // assert
    expect(result, equals(Right(tCharacters)));
  });
}
