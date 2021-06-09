import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:rick_and_morty_info/features/home/domain/entities/location.dart';
import 'package:rick_and_morty_info/features/home/domain/repositories/i_home_repository.dart';
import 'package:rick_and_morty_info/features/home/domain/usecases/get_locations_usecase.dart';

class MockHomeRepository extends Mock implements IHomeRepository {}

void main() {
  MockHomeRepository mockRepository;
  GetLocationsUseCase usecase;

  setUp(() {
    mockRepository = MockHomeRepository();
    usecase = GetLocationsUseCase(mockRepository);
  });

  final tPage = 1;
  final tLocations = [
    Location(
      id: '1',
      name: 'Pilot',
      type: 'Planet',
      dimension: 'Dimension C-137',
    )
  ];

  test('should return list of locations when requested with offset', () async {
    // arrange
    when(() => mockRepository.getLocations(tPage))
        .thenAnswer((_) async => await Right(tLocations));
    // act
    final result = await usecase(LocationParams(tPage));
    // assert
    expect(result, equals(Right(tLocations)));
  });
}
