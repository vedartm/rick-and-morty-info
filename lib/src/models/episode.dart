class Episode {
  Episode({this.id, this.name, this.airDate, this.episode});

  Episode.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        airDate = json['air_date'],
        episode = json['episode'];

  final String id;
  final String name;
  final String airDate;
  final String episode;
}
