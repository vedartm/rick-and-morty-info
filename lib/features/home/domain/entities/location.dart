import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required String id,
    required String name,
    required String type,
    required String dimension,
  }) = _Location;
}
