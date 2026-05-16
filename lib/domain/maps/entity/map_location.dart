import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_location.freezed.dart';

@freezed
abstract class MapLocation with _$MapLocation {
  const factory MapLocation({
    required double latitude,
    required double longitude,
    @Default('') String roadAddress,
    @Default('') String jibunAddress,
    @Default('') String englishAddress,
    @Default('') String buildingName,
    double? distanceMeters,
  }) = _MapLocation;

  const MapLocation._();

  String get fullAddress {
    final String base =
        roadAddress.isNotEmpty ? roadAddress : jibunAddress;
    if (base.isEmpty) {
      return buildingName;
    }
    if (buildingName.isEmpty || base.contains(buildingName)) {
      return base;
    }
    return '$base $buildingName';
  }
}
