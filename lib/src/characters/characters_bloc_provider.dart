import 'package:flutter/material.dart';

import 'characters_bloc.dart';

class CharactersBlocProvider extends InheritedWidget {
  CharactersBlocProvider({Key key, Widget child})
      : super(key: key, child: child);

  final CharactersBloc bloc = CharactersBloc();

  @override
  bool updateShouldNotify(CharactersBlocProvider oldWidget) => true;

  static CharactersBloc of(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<CharactersBlocProvider>();
    return provider.bloc;
  }
}
