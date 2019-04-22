import 'package:graphql_flutter/graphql_flutter.dart';

class EpisodesBloc {
  Client client = Client(
    endPoint: 'https://rickandmortyapi.com/graphql',
    cache: InMemoryCache(),
  );

  Future<List<Map<String, dynamic>>> queryEpisodes(int page) async {
    final Map<String, dynamic> data = await client.query(
      // query: readChars,
      query: 'query {' +
          ' episodes(page: $page) {' +
          '   info {' +
          '     count' +
          '     pages' +
          '   }' +
          '   results {' +
          '     id' +
          '     name' +
          '     air_date' +
          '     episode' +
          '   }' +
          ' }' +
          '}',
    );

    final List<Map<String, dynamic>> episodes =
        data['episodes']['results'].cast<Map<String, dynamic>>();
    return episodes;
  }
}
