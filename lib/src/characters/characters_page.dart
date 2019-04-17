import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_and_morty_info/src/models/character.dart';

class CharactersPage extends StatefulWidget {
  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  @override
  Widget build(BuildContext context) {
    return Query(
      "query {" +
          " characters(page: , 1filter: { name: \"rick\" }) {" +
          "   info {" +
          "     count" +
          "   }" +
          "   results {" +
          "     id" +
          "     name" +
          "     image" +
          "     type" +
          "     status" +
          "     species" +
          "     gender" +
          "   }" +
          " }" +
          "}",
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

        print(data);

        final List<dynamic> characters = data['characters']['results'];
        return ListView.builder(
          itemCount: characters.length,
          itemBuilder: (BuildContext context, int index) {
            final Character character = Character.fromJson(characters[index]);
            return Card(
              margin: const EdgeInsets.all(10.0),
              child: ListTile(
                title: Text(character.name),
              ),
            );
          },
        );
      },
    );
  }
}
