import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/location.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required String id,
    required String name,
    required String type,
    required String dimension,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  factory LocationModel.fromEntity(Location location) => LocationModel(
        id: location.id,
        name: location.name,
        type: location.type,
        dimension: location.dimension,
      );
}

extension LocationModelX on LocationModel {
  Location toEntity() => Location(
        id: id,
        name: name,
        type: type,
        dimension: dimension,
      );
}
