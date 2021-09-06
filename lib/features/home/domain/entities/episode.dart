import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode.freezed.dart';

@freezed
class Episode with _$Episode {
  const factory Episode({
    required String id,
    required String name,
    required String airDate,
    required String episode,
  }) = _Episode;
}
