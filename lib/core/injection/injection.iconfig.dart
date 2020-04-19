// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:graphql/client.dart';
import 'package:rick_and_morty_info/core/injection/register_module.dart';
import 'package:rick_and_morty_info/core/network/network_info.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule();
  g.registerLazySingleton<GraphQLClient>(() => registerModule.gqlClient);
  g.registerLazySingleton<INetworkInfo>(
      () => NetworkInfo(g<DataConnectionChecker>()));
}

class _$RegisterModule extends RegisterModule {}
