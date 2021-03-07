// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i5;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/data/datasources/home_local_datasource.dart' as _i6;
import '../../features/home/data/datasources/home_remote_datasource.dart'
    as _i7;
import '../../features/home/data/repositories/home_repository.dart' as _i10;
import '../../features/home/domain/repositories/i_home_repository.dart' as _i9;
import '../../features/home/domain/usecases/get_characters_usecase.dart'
    as _i11;
import '../../features/home/domain/usecases/get_episodes_usecase.dart' as _i12;
import '../../features/home/domain/usecases/get_locations_usecase.dart' as _i13;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i14;
import '../network/network_info.dart' as _i8;
import 'register_module.dart' as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  await gh.lazySingletonAsync<_i3.Box<dynamic>>(() => registerModule.openBox,
      preResolve: true);
  gh.lazySingleton<_i4.DataConnectionChecker>(
      () => registerModule.connectionChecker);
  gh.lazySingleton<_i5.GraphQLClient>(() => registerModule.gqlClient);
  gh.lazySingleton<_i6.IHomeLocalDataSource>(
      () => _i6.HomeLocalDataSource(get<_i3.Box<dynamic>>()));
  gh.lazySingleton<_i7.IHomeRemoteDataSource>(
      () => _i7.HomeRemoteDataSource(get<_i5.GraphQLClient>()));
  gh.lazySingleton<_i8.NetworkInfo>(
      () => _i8.NetworkInfo(get<_i4.DataConnectionChecker>()));
  gh.lazySingleton<_i9.IHomeRepository>(() => _i10.HomeRepository(
      get<_i8.NetworkInfo>(),
      get<_i7.IHomeRemoteDataSource>(),
      get<_i6.IHomeLocalDataSource>()));
  gh.lazySingleton<_i11.GetCharactersUseCase>(
      () => _i11.GetCharactersUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i12.GetEpisodesUseCase>(
      () => _i12.GetEpisodesUseCase(get<_i9.IHomeRepository>()));
  gh.lazySingleton<_i13.GetLocationsUseCase>(
      () => _i13.GetLocationsUseCase(get<_i9.IHomeRepository>()));
  gh.factory<_i14.HomeBloc>(() => _i14.HomeBloc(
      get<_i11.GetCharactersUseCase>(),
      get<_i12.GetEpisodesUseCase>(),
      get<_i13.GetLocationsUseCase>()));
  return get;
}

class _$RegisterModule extends _i15.RegisterModule {}
