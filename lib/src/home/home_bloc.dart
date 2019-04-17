import 'dart:async';

enum NavBarItem { CHARACTERS, EPISODES, LOCATIONS }

class HomeBloc {
  final StreamController<NavBarItem> _navBarController =
      StreamController<NavBarItem>.broadcast();

  NavBarItem defaultItem = NavBarItem.CHARACTERS;

  Stream<NavBarItem> get itemStream => _navBarController.stream;

  void pickItem(int i) {
    switch (i) {
      case 0:
        _navBarController.sink.add(NavBarItem.CHARACTERS);
        break;
      case 1:
        _navBarController.sink.add(NavBarItem.EPISODES);
        break;
      case 2:
        _navBarController.sink.add(NavBarItem.LOCATIONS);
        break;
    }
  }

  void dispose() {
    _navBarController?.close();
  }
}
