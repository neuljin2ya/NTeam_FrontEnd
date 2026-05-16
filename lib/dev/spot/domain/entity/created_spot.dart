import 'package:freezed_annotation/freezed_annotation.dart';

part 'created_spot.freezed.dart';

@freezed
abstract class CreatedSpot with _$CreatedSpot {
  const factory CreatedSpot({
    required int spotId,
  }) = _CreatedSpot;
}
