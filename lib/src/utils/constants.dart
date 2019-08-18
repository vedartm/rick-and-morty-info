import 'package:graphql_flutter/graphql_flutter.dart';

GraphQLClient client = GraphQLClient(
  cache: InMemoryCache(),
  link: HttpLink(
    uri: 'https://rickandmortyapi.com/graphql',
  ),
);
