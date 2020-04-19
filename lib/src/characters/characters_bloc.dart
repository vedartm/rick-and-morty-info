import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class CharactersBloc {
  static HttpLink link = HttpLink(uri: 'https://rickandmortyapi.com/graphql');
  GraphQLClient client = GraphQLClient(
    cache: InMemoryCache(),
    link: link,
  );

  Future<List<Map<String, dynamic>>> queryCharacters(int page) async {
    final data = await client.query(
      QueryOptions(
        document: '''
        query { 
             characters(page: $page) { 
               info {
                 count
                 pages
               }
               results { 
                 id
                 name
                 image
                 type
                 status
                 species
                 gender
               }
             }
            }''',
      ),
    );

    final List<Map<String, dynamic>> characters =
        data.data['characters']['results'].cast<Map<String, dynamic>>();
    return characters;
  }

  Stream<List<Map<String, dynamic>>> getCharactersStream(int page) {
    final future = queryCharacters(page);
    return Stream<List<Map<String, dynamic>>>.fromFuture(future);
  }

  IconData getStatusIcon(String status) {
    switch (status) {
      case 'Alive':
        return Icons.tag_faces;
        break;
      case 'Dead':
        return Icons.sentiment_very_dissatisfied;
        break;
      case 'unknown':
        return Icons.help_outline;
        break;
      default:
        return Icons.help_outline;
        break;
    }
  }
}
