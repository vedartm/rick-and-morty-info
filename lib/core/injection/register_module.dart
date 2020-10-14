import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  DataConnectionChecker get connectionChecker => DataConnectionChecker();

  @lazySingleton
  GraphQLClient get gqlClient => GraphQLClient(
        cache: InMemoryCache(),
        link: HttpLink(uri: 'https://rickandmortyapi.com/graphql'),
      );

  @preResolve
  @lazySingleton
  Future<Box> get openBox async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    return Hive.openBox<String>('rick-and-morty-info');
  }
}
