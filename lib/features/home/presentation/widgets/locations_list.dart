import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pagination_view/pagination_view.dart';

import '../../domain/entities/location.dart';
import '../bloc/home_bloc.dart';
import 'status_empty.dart';
import 'status_error.dart';

class LocationsList extends StatelessWidget {
  const LocationsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) => PaginationView<Location>(
        itemBuilder: (context, location, index) => ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(AntIcons.heat_map),
          ),
          title: Text(location.name),
          subtitle: Text(location.dimension),
          trailing: Text(location.type),
        ),
        pageFetch: context.read<HomeBloc>().getLocationsInPage,
        onEmpty: StatusEmpty(),
        onError: (exception) => StatusError(exception: exception),
      ),
    );
  }
}
