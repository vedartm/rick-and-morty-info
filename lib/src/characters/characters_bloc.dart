import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class CharactersBloc {
  Client client = Client(
    endPoint: 'https://rickandmortyapi.com/graphql',
    cache: InMemoryCache(),
  );

  Future<List<Map<String, dynamic>>> queryCharacters(int page) async {
    final Map<String, dynamic> data = await client.query(
      // query: readChars,
      query: 'query {' +
          ' characters(page: $page) {' +
          '   info {' +
          '     count' +
          '     pages' +
          '   }' +
          '   results {' +
          '     id' +
          '     name' +
          '     image' +
          '     type' +
          '     status' +
          '     species' +
          '     gender' +
          '   }' +
          ' }' +
          '}',
    );

    final List<Map<String, dynamic>> characters =
        data['characters']['results'].cast<Map<String, dynamic>>();
    return characters;
  }

  Stream<List<Map<String, dynamic>>> getCharactersStream(int page) {
    final Future<List<Map<String, dynamic>>> future = queryCharacters(page);
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
