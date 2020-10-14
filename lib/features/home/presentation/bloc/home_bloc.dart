import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/character.dart';
import '../../domain/entities/episode.dart';
import '../../domain/entities/location.dart';
import '../../domain/usecases/get_characters_usecase.dart';
import '../../domain/usecases/get_episodes_usecase.dart';
import '../../domain/usecases/get_locations_usecase.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._getCharacter, this._getEpisodes, this._getLocations)
      : super(HomeState.navigationScreenChanged(0));

  final GetCharactersUseCase _getCharacter;
  final GetEpisodesUseCase _getEpisodes;
  final GetLocationsUseCase _getLocations;

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield HomeState.navigationScreenChanged(event.currentScreenIndex);
  }

  Future<List<Character>> getCharactersInPage(int offset) async {
    final page = _getPageFromOffset(offset);
    final either = await _getCharacter(CharacterParams(page));
    return either.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
  }

  Future<List<Episode>> getEpisodesInPage(int offset) async {
    final page = _getPageFromOffset(offset);
    final either = await _getEpisodes(EpisodeParams(page));
    return either.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
  }

  Future<List<Location>> getLocationsInPage(int offset) async {
    final page = _getPageFromOffset(offset);
    final either = await _getLocations(LocationParams(page));
    return either.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
  }

  int _getPageFromOffset(int offset) => offset ~/ 20 + 1;

  Exception _getFailureAndThrowExpection(Failure l) {
    if (l is ServerFailure) {
      return ServerException();
    } else if (l is CacheFailure) {
      return CacheException();
    } else {
      return UnknownException();
    }
  }
}
