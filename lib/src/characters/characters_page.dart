import 'package:flutter/material.dart';

import '../models/character.dart';
import 'characters_bloc.dart';
import 'characters_bloc_provider.dart';
import 'characters_card.dart';

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
        itemBuilder: (context, index) {
          return FutureBuilder<List<Map<String, dynamic>>>(
            future: _bloc.queryCharacters(index + 1),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 2,
                  child: const Align(
                      alignment: Alignment.topCenter,
                      child: CircularProgressIndicator()),
                );
              }
              if (snapshot.hasError) {
                return Text('Error : ${snapshot.error}');
              } else {
                final page = snapshot.data;
                return _buildPage(page);
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
      children: page.map<Widget>((item) {
        final character = Character.fromJson(item);
        return CharacterCard(character: character);
      }).toList(),
    );
  }
}
