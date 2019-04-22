import 'package:flutter/material.dart';
import 'package:rick_and_morty_info/src/locations/locations_card.dart';
import 'package:rick_and_morty_info/src/models/location.dart';

class LocationsPage extends StatefulWidget {
  @override
  _LocationsPageState createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LocationsCard(
        location:
            Location('12', 'Anatomy Park', 'Dimension C-137', 'Microverse'),
      ),
    );
  }
}
