import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_spot.freezed.dart';

@freezed
abstract class SavedSpot with _$SavedSpot {
  const factory SavedSpot({
    required int savedSpotId,
  }) = _SavedSpot;
}
