import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pagination_view/pagination_view.dart';

import '../../domain/entities/episode.dart';
import '../bloc/home_bloc.dart';
import 'status_empty.dart';
import 'status_error.dart';

class EpisodesList extends StatelessWidget {
  const EpisodesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) => PaginationView<Episode>(
        itemBuilder: (context, episode, index) => ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(AntIcons.video_camera),
          ),
          title: Text(episode.name),
          subtitle: Text(episode.episode),
          trailing: Text(episode.airDate),
        ),
        pageFetch: context.read<HomeBloc>().getEpisodesInPage,
        onEmpty: StatusEmpty(),
        onError: (exception) => StatusError(exception: exception),
      ),
    );
  }
}
