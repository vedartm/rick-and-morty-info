// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:hive/hive.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../features/home/domain/usecases/get_characters_usecase.dart';
import '../../features/home/domain/usecases/get_episodes_usecase.dart';
import '../../features/home/domain/usecases/get_locations_usecase.dart';
import '../../features/home/presentation/bloc/home_bloc.dart';
import '../../features/home/data/repositories/home_repository.dart';
import '../../features/home/data/datasources/home_local_datasource.dart';
import '../../features/home/data/datasources/home_remote_datasource.dart';
import '../../features/home/domain/repositories/i_home_repository.dart';
import '../network/network_info.dart';
import 'register_module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  final box = await registerModule.openBox;
  gh.lazySingleton<Box<dynamic>>(() => box);
  gh.lazySingleton<DataConnectionChecker>(
      () => registerModule.connectionChecker);
  gh.lazySingleton<GraphQLClient>(() => registerModule.gqlClient);
  gh.lazySingleton<IHomeLocalDataSource>(
      () => HomeLocalDataSource(get<Box<dynamic>>()));
  gh.lazySingleton<IHomeRemoteDataSource>(
      () => HomeRemoteDataSource(get<GraphQLClient>()));
  gh.lazySingleton<NetworkInfo>(
      () => NetworkInfo(get<DataConnectionChecker>()));
  gh.lazySingleton<IHomeRepository>(() => HomeRepository(
        get<NetworkInfo>(),
        get<IHomeRemoteDataSource>(),
        get<IHomeLocalDataSource>(),
      ));
  gh.lazySingleton<GetCharactersUseCase>(
      () => GetCharactersUseCase(get<IHomeRepository>()));
  gh.lazySingleton<GetEpisodesUseCase>(
      () => GetEpisodesUseCase(get<IHomeRepository>()));
  gh.lazySingleton<GetLocationsUseCase>(
      () => GetLocationsUseCase(get<IHomeRepository>()));
  gh.factory<HomeBloc>(() => HomeBloc(
        get<GetCharactersUseCase>(),
        get<GetEpisodesUseCase>(),
        get<GetLocationsUseCase>(),
      ));
  return get;
}

class _$RegisterModule extends RegisterModule {}
