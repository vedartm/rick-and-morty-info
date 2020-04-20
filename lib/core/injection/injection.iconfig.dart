// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:hive/hive.dart';
import 'package:rick_and_morty_info/core/injection/register_module.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:graphql/client.dart';
import 'package:rick_and_morty_info/features/home/data/datasources/home_local_datasource.dart';
import 'package:rick_and_morty_info/features/home/data/datasources/home_remote_datasource.dart';
import 'package:rick_and_morty_info/core/network/network_info.dart';
import 'package:rick_and_morty_info/features/home/data/repositories/home_repository.dart';
import 'package:rick_and_morty_info/features/home/domain/repositories/i_home_repository.dart';
import 'package:rick_and_morty_info/features/home/domain/usecases/get_characters_usecase.dart';
import 'package:rick_and_morty_info/features/home/domain/usecases/get_episodes_usecase.dart';
import 'package:rick_and_morty_info/features/home/domain/usecases/get_locations_usecase.dart';
import 'package:rick_and_morty_info/features/home/presentation/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerModule = _$RegisterModule();
  final box = await registerModule.openBox;
  g.registerLazySingleton<Box<dynamic>>(() => box);
  g.registerLazySingleton<DataConnectionChecker>(
      () => registerModule.connectionChecker);
  g.registerLazySingleton<GraphQLClient>(() => registerModule.gqlClient);
  g.registerLazySingleton<IHomeLocalDataSource>(
      () => HomeLocalDataSource(g<Box<dynamic>>()));
  g.registerLazySingleton<IHomeRemoteDataSource>(
      () => HomeRemoteDataSource(g<GraphQLClient>()));
  g.registerLazySingleton<INetworkInfo>(
      () => NetworkInfo(g<DataConnectionChecker>()));
  g.registerLazySingleton<IHomeRepository>(() => HomeRepository(
        g<INetworkInfo>(),
        g<IHomeRemoteDataSource>(),
        g<IHomeLocalDataSource>(),
      ));
  g.registerLazySingleton<GetCharactersUseCase>(
      () => GetCharactersUseCase(g<IHomeRepository>()));
  g.registerLazySingleton<GetEpisodesUseCase>(
      () => GetEpisodesUseCase(g<IHomeRepository>()));
  g.registerLazySingleton<GetLocationsUseCase>(
      () => GetLocationsUseCase(g<IHomeRepository>()));
  g.registerFactory<HomeBloc>(() => HomeBloc(
        g<GetCharactersUseCase>(),
        g<GetEpisodesUseCase>(),
        g<GetLocationsUseCase>(),
      ));
}

class _$RegisterModule extends RegisterModule {}
