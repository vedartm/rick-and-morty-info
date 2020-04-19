import 'package:flutter/material.dart';

import '../models/location.dart';
import 'locations_bloc.dart';
import 'locations_card.dart';

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
      itemBuilder: (context, index) {
        return FutureBuilder<List<Map<String, dynamic>>>(
          future: _bloc.queryLocations(index + 1),
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
              return Center(child: Text('Error : ${snapshot.error}'));
            } else {
              return _buildPage(snapshot.data);
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
      children: page.map<Widget>((item) {
        final location = Location.fromJson(item);
        return LocationsCard(location: location);
      }).toList(),
    );
  }
}
