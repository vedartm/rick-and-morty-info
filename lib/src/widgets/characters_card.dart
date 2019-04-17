import 'package:flutter/material.dart';
import 'package:rick_and_morty_info/src/models/character.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({Key key, this.character}) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120.0,
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
      height: 124.0,
      margin: const EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: const Color(0xFFe89ac7),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
    );
  }
}
