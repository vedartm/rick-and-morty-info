import 'package:flutter/material.dart';
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
            characterCard(),
            characterThumbnail(),
          ],
        ));
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

  Widget characterCard() {
    return Container(
      margin: const EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        // color: const Color(0xFFe89ac7),
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
      child: cardContent(),
    );
  }

  Widget cardContent() {
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
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Species - ${character.species}',
            style: TextStyle(color: Colors.white70, fontSize: 18),
          ),
          const SizedBox(height: 8),
          Row(
            children: <Widget>[
              Text(
                'Gender - ${character.gender}',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(width: 16),
              Text(
                'Status - ${character.status}',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
