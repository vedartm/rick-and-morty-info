import 'package:graphql_flutter/graphql_flutter.dart';

class LocationsBloc {
  static HttpLink link = HttpLink(uri: 'https://rickandmortyapi.com/graphql');
  GraphQLClient client = GraphQLClient(cache: InMemoryCache(), link: link);

  Future<List<Map<String, dynamic>>> queryLocations(int page) async {
    final QueryResult data = await client.query(QueryOptions(
      // query: readChars,
      document: 'query {' +
          ' locations(page: $page) {' +
          '   info {' +
          '     count' +
          '     pages' +
          '   }' +
          '   results {' +
          '     id' +
          '     name' +
          '     dimension' +
          '     type' +
          '   }' +
          ' }' +
          '}',
    ));

    final List<Map<String, dynamic>> locations =
        data.data['locations']['results'].cast<Map<String, dynamic>>();
    return locations;
  }
}
