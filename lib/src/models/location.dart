class Location {
  Location(this.id, this.name, this.dimension, this.type);
  Location.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        type = json['type'],
        dimension = json['dimension'];

  final String id;
  final String name;
  final String type;
  final String dimension;
}
