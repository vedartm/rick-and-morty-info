import 'package:flutter/material.dart';
import 'package:rick_and_morty_info/src/characters/characters_bloc.dart';
import 'package:rick_and_morty_info/src/characters/characters_bloc_provider.dart';
import 'package:rick_and_morty_info/src/models/character.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({Key key, this.character}) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 110,
        maxHeight: 131,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(
        children: <Widget>[
          characterCard(context),
          characterThumbnail(),
        ],
      ),
    );
  }

  Widget characterThumbnail() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: CircleAvatar(
        radius: 46.0,
        backgroundImage: NetworkImage(character.image),
      ),
    );
  }

  Widget characterCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
            offset: Offset(0.0, 8.0),
          ),
        ],
      ),
      child: cardContent(context),
    );
  }

  Widget cardContent(BuildContext context) {
    final CharactersBloc _bloc = CharactersBlocProvider.of(context);
    return Container(
      alignment: FractionalOffset.center,
      margin: const EdgeInsets.fromLTRB(66.0, 16.0, 16.0, 16.0),
      constraints: const BoxConstraints.expand(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            character.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Species - ${character.species}',
            style: const TextStyle(color: Colors.white70, fontSize: 18),
          ),
          const SizedBox(height: 8),
          Row(
            children: <Widget>[
              const Text(
                'Status - ',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              Icon(
                _bloc.getStatusIcon(character.status),
                color: Colors.white,
              ),
              const SizedBox(width: 16),
              Flexible(
                child: Text(
                  'Gender - ${character.gender}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
