import 'package:flutter/material.dart';
import 'package:rick_and_morty_info/src/characters/characters_page.dart';
import 'package:rick_and_morty_info/src/episodes/episodes_page.dart';
import 'package:rick_and_morty_info/src/home/home_bloc.dart';
import 'package:rick_and_morty_info/src/locations/locations_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomeBloc _homeBloc;

  @override
  void didChangeDependencies() {
    _homeBloc = HomeBloc();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _homeBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rick and Morty',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: StreamBuilder<NavBarItem>(
        stream: _homeBloc.itemStream,
        initialData: _homeBloc.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          switch (snapshot.data) {
            case NavBarItem.CHARACTERS:
              return CharactersPage();
            case NavBarItem.EPISODES:
              return EpisodesPage();
            case NavBarItem.LOCATIONS:
              return LocationsPage();
          }
        },
      ),
      bottomNavigationBar: StreamBuilder<NavBarItem>(
        stream: _homeBloc.itemStream,
        initialData: _homeBloc.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          return BottomNavigationBar(
            fixedColor: Colors.blueAccent,
            currentIndex: snapshot.data.index,
            onTap: _homeBloc.pickItem,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                title: Text('Characters'),
                icon: Icon(Icons.people),
              ),
              BottomNavigationBarItem(
                title: Text('Episodes'),
                icon: Icon(Icons.timelapse),
              ),
              BottomNavigationBarItem(
                title: Text('Locations'),
                icon: Icon(Icons.location_city),
              ),
            ],
          );
        },
      ),
    );
  }
}
