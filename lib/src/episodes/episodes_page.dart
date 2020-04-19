import 'package:flutter/material.dart';

import '../models/episode.dart';
import 'episodes_bloc.dart';
import 'episodes_card.dart';

class EpisodesPage extends StatefulWidget {
  @override
  _EpisodesPageState createState() => _EpisodesPageState();
}

class _EpisodesPageState extends State<EpisodesPage> {
  EpisodesBloc _bloc;

  @override
  void didChangeDependencies() {
    _bloc = EpisodesBloc();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return FutureBuilder<List<Map<String, dynamic>>>(
          future: _bloc.queryEpisodes(index + 1),
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

/*
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: _queryEpisodes(1),
      builder: (BuildContext context,
          AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.active:
          case ConnectionState.waiting:
            return const Center(child: CircularProgressIndicator());
          case ConnectionState.done:
            if (snapshot.hasError) {
              return Center(child: Text('Error : ${snapshot.error}'));
            } else {
              return _buildPage(snapshot.data);
            }
        }
      },
    );
*/

    // return StreamBuilder<>(
    //   builder: (),
    // );
  }

  Widget _buildPage(List<Map<String, dynamic>> page) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: page.map<Widget>((item) {
        final episode = Episode.fromJson(item);
        return EpisodesCard(episode: episode);
      }).toList(),
    );
  }
}
