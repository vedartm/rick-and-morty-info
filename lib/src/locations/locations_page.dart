import 'package:flutter/material.dart';
import 'package:rick_and_morty_info/src/locations/locations_bloc.dart';
import 'package:rick_and_morty_info/src/locations/locations_card.dart';
import 'package:rick_and_morty_info/src/models/location.dart';

class LocationsPage extends StatefulWidget {
  @override
  _LocationsPageState createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  LocationsBloc _bloc;

  @override
  void didChangeDependencies() {
    _bloc = LocationsBloc();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return FutureBuilder<List<Map<String, dynamic>>>(
          future: _bloc.queryLocations(index + 1),
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
                  return Center(child: Text('Error : ${snapshot.error}'));
                } else {
                  return _buildPage(snapshot.data);
                }
            }
          },
        );
      },
    );
  }

  Widget _buildPage(List<Map<String, dynamic>> page) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: page.map<Widget>((Map<String, dynamic> item) {
        final Location location = Location.fromJson(item);
        return LocationsCard(location: location);
      }).toList(),
    );
  }
}
