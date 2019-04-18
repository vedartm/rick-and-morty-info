import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_and_morty_info/src/models/character.dart';
import 'package:rick_and_morty_info/src/widgets/characters_card.dart';

class CharactersPage extends StatefulWidget {
  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  int currentPage = 0;
  List<dynamic> characters = <Character>[];

/*
  @override
  Widget build(BuildContext context) {
    return Query(
      'query {' +
          ' characters(page: $currentPage, filter: { name: \'morty\' }) {' +
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
      builder: ({
        bool loading,
        Map<String, dynamic> data,
        Exception error,
      }) {
        if (error != null) {
          return Center(child: Text(error.toString()));
        }

        if (loading) {
          return const Center(child: CircularProgressIndicator());
        }

        final List<dynamic> characters = data['characters']['results'];
        return ListView.builder(
          itemCount: characters.length,
          ijtemBuilder: (BuildContext context, int index) {
            final Character character = Character.fromJson(characters[index]);
            return CharacterCard(character: character);
          },
        );
      },
    );
  }
*/

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return FutureBuilder<List<Map<String, dynamic>>>(
          future: _queryCharacters(index),
          builder: (BuildContext context,
              AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.active:
              case ConnectionState.waiting:
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 2,
                  child: const Align(
                      alignment: Alignment.topCenter,
                      child: CircularProgressIndicator()),
                );
              case ConnectionState.done:
                if (snapshot.hasError) {
                  return Text('Error : ${snapshot.error}');
                } else {
                  final List<Map<String, dynamic>> page = snapshot.data;
                  return _buildPage(page);
                }
            }
          },
        );
      },
    );
  }

  Widget _buildPage(List<Map<String, dynamic>> page) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: page.map<Widget>((Map<String, dynamic> item) {
        final Character character = Character.fromJson(item);
        return CharacterCard(character: character);
      }).toList(),
    );
  }

  Client client = Client(
    endPoint: 'https://rickandmortyapi.com/graphql',
    cache: InMemoryCache(),
  );

  Future<List<Map<String, dynamic>>> _queryCharacters(int page) async {
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
    print(data);
    final List<Map<String, dynamic>> characters =
        data['characters']['results'].cast<Map<String, dynamic>>();
    return characters;
  }
}
