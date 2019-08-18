import 'package:graphql_flutter/graphql_flutter.dart';

class EpisodesBloc {
  static HttpLink link = HttpLink(uri: 'https://rickandmortyapi.com/graphql');
  GraphQLClient client = GraphQLClient(
    cache: InMemoryCache(),
    link: link,
  );

  Future<List<Map<String, dynamic>>> queryEpisodes(int page) async {
    final QueryResult data = await client.query(QueryOptions(
      // query: readChars,
      document: '''query {
           episodes(page: $page) {
             info {
               count
               pages
             }
             results {
               id
               name
               air_date
               episode
             }
           }
          }''',
    ));

    final List<Map<String, dynamic>> episodes =
        data.data['episodes']['results'].cast<Map<String, dynamic>>();
    return episodes;
  }
}
