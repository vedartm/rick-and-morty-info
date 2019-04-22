import 'package:graphql_flutter/graphql_flutter.dart';

class LocationsBloc {
  Client client = Client(
    endPoint: 'https://rickandmortyapi.com/graphql',
    cache: InMemoryCache(),
  );

  Future<List<Map<String, dynamic>>> queryLocations(int page) async {
    final Map<String, dynamic> data = await client.query(
      // query: readChars,
      query: 'query {' +
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
    );

    final List<Map<String, dynamic>> locations =
        data['locations']['results'].cast<Map<String, dynamic>>();
    return locations;
  }
}
