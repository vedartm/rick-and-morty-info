import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

@registerModule
abstract class RegisterModule {
  @lazySingleton
  GraphQLClient get gqlClient => GraphQLClient(
        cache: InMemoryCache(),
        link: HttpLink(uri: 'https://rickandmortyapi.com/graphql'),
      );
}
