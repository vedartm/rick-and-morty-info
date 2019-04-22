import 'package:flutter/material.dart';
import 'package:rick_and_morty_info/src/characters/characters_bloc.dart';
import 'package:rick_and_morty_info/src/characters/characters_bloc_provider.dart';
import 'package:rick_and_morty_info/src/characters/characters_card.dart';
import 'package:rick_and_morty_info/src/models/character.dart';

class CharactersPage extends StatefulWidget {
  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  CharactersBloc _bloc;

  @override
  void didChangeDependencies() {
    _bloc = CharactersBloc();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CharactersBlocProvider(
      child: ListView.builder(
        itemCount: 25,
        itemBuilder: (BuildContext context, int index) {
          return FutureBuilder<List<Map<String, dynamic>>>(
            future: _bloc.queryCharacters(index + 1),
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
      ),
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
}
