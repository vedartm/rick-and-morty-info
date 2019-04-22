import 'package:flutter/material.dart';
import 'package:rick_and_morty_info/src/characters/characters_bloc.dart';

class CharactersBlocProvider extends InheritedWidget {
  CharactersBlocProvider({Key key, Widget child})
      : super(key: key, child: child);

  final CharactersBloc bloc = CharactersBloc();

  @override
  bool updateShouldNotify(CharactersBlocProvider oldWidget) => true;

  static CharactersBloc of(BuildContext context) {
    final CharactersBlocProvider provider =
        context.inheritFromWidgetOfExactType(CharactersBlocProvider);
    return provider.bloc;
  }
}
