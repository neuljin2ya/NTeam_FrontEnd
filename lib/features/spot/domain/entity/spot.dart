import 'package:freezed_annotation/freezed_annotation.dart';

part 'spot.freezed.dart';

@freezed
abstract class Spot with _$Spot {
  const factory Spot({
    required int spotId,
    required String name,
    required String captionImgUrl,
    required double latitude,
    required double longitude,
    required String mainAddress,
    required String subAddress,
    required String difficulty,
    required String description,
    @Default(<String>[]) List<String> features,
    @Default(<String>[]) List<String> statusList,
    required DateTime createdAt,
  }) = _Spot;

  const Spot._();

  String get fullAddress {
    if (mainAddress.isEmpty) {
      return subAddress;
    }
    if (subAddress.isEmpty) {
      return mainAddress;
    }
    return '$mainAddress $subAddress';
  }
}
