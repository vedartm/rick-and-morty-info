import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rick_and_morty_info/core/error/exceptions.dart';
import 'package:rick_and_morty_info/core/error/failures.dart';
import 'package:rick_and_morty_info/core/network/network_info.dart';
import 'package:rick_and_morty_info/core/types/gender.dart';
import 'package:rick_and_morty_info/core/types/vital_status.dart';
import 'package:rick_and_morty_info/features/home/data/datasources/home_local_datasource.dart';
import 'package:rick_and_morty_info/features/home/data/datasources/home_remote_datasource.dart';
import 'package:rick_and_morty_info/features/home/data/models/character_model.dart';
import 'package:rick_and_morty_info/features/home/data/repositories/home_repository.dart';
import 'package:rick_and_morty_info/features/home/domain/entities/character.dart';

class MockHomeRemoteDataSource extends Mock implements IHomeRemoteDataSource {}

class MockHomeLocalDataSource extends Mock implements IHomeLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  MockHomeLocalDataSource mockLocalDataSource;
  MockHomeRemoteDataSource mockRemoteDataSource;
  MockNetworkInfo mockNetworkInfo;
  HomeRepository repository;

  setUp(() {
    mockLocalDataSource = MockHomeLocalDataSource();
    mockRemoteDataSource = MockHomeRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = HomeRepository(
      mockNetworkInfo,
      mockRemoteDataSource,
      mockLocalDataSource,
    );
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      body();
    });
  }

  void runTestsOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });

      body();
    });
  }

  group('getCharacters', () {
    final tPage = 1;
    // final tCharacters = [
    //   Character(
    //     id: 1,
    //     name: 'Rick Sanchez',
    //     vitalStatus: const VitalStatus.alive(),
    //     gender: const Gender.male(),
    //     type: '',
    //     species: 'Human',
    //     image: 'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
    //   )
    // ];
    final tCharacterModels = [
      CharacterModel(
        id: '1',
        name: 'Rick Sanchez',
        vitalStatus: const VitalStatus.alive(),
        gender: const Gender.male(),
        type: '',
        species: 'Human',
        image: 'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
      )
    ];

    test('should check if the device is online', () async {
      // arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(mockRemoteDataSource.getCharacters(tPage))
          .thenAnswer((_) async => await tCharacterModels);
      // act
      await repository.getCharacters(tPage);
      // assert
      verify(mockNetworkInfo.isConnected);
    });

    runTestsOnline(() {
      test('should get characters when page number is passed', () async {
        // arrange
        when(mockRemoteDataSource.getCharacters(tPage))
            .thenAnswer((_) async => await tCharacterModels);
        // act
        final result = await repository.getCharacters(tPage);
        // assert
        expect(result, isA<Right<Failure, List<Character>>>());
      });

      test('should cache characters when remote data is recieved', () async {
        // arrange
        when(mockRemoteDataSource.getCharacters(tPage))
            .thenAnswer((_) async => await tCharacterModels);
        // act
        await repository.getCharacters(tPage);
        // assert
        verify(mockRemoteDataSource.getCharacters(tPage));
        verify(mockLocalDataSource.cacheCharacters(tCharacterModels, tPage));
      });

      test('should return failure when there is an exception', () async {
        // arrange
        when(mockRemoteDataSource.getCharacters(tPage))
            .thenThrow(ServerException());
        // act
        final result = await repository.getCharacters(tPage);
        // assert
        verify(mockRemoteDataSource.getCharacters(tPage));
        verifyZeroInteractions(mockLocalDataSource);
        expect(result, isA<Left<Failure, List<Character>>>());
      });
    });

    runTestsOffline(() {
      test('should return cached data when cache is hit', () async {
        // arrange
        when(mockLocalDataSource.getLastCharacters(tPage))
            .thenReturn(tCharacterModels);
        // act
        final result = await repository.getCharacters(tPage);
        // assert
        expect(result, isA<Right<Failure, List<Character>>>());
      });

      test('should return cache failure when cache is miss', () async {
        // arrange
        when(mockLocalDataSource.getLastCharacters(tPage))
            .thenThrow(CacheException());
        // act
        final result = await repository.getCharacters(tPage);
        // assert
        expect(result, isA<Left<Failure, List<Character>>>());
      });
    });
  });
}
