import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/characters_list.dart';
import '../widgets/episodes_list.dart';
import '../widgets/locations_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) => Scaffold(
        appBar: MyAppBar(),
        body: _getScreenFromIndex(state.selectedIndex),
        bottomNavigationBar: BottomNavBar(
          selectedIndex: state.selectedIndex,
          onItemSelected: (index) =>
              context.read<HomeBloc>().add(HomeEvent.itemSelected(index)),
          items: [
            BottomNavBarItem(
              textAlign: TextAlign.center,
              icon: Icon(AntIcons.team),
              title: Text('Characters'),
            ),
            BottomNavBarItem(
              textAlign: TextAlign.center,
              icon: Icon(AntIcons.video_camera_outline),
              title: Text('Episodes'),
            ),
            BottomNavBarItem(
              textAlign: TextAlign.center,
              icon: Icon(AntIcons.heat_map),
              title: Text('Locations'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getScreenFromIndex(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return CharactersList();
      case 1:
        return EpisodesList();
      default:
        return LocationsList();
    }
  }
}
