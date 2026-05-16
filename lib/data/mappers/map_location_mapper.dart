import 'dart:math' as math;

import '../../domain/maps/entity/map_location.dart';
import '../models/geocode/geocode_response_model.dart';
import '../models/local_search/local_search_response_model.dart';
import '../models/reverse_geocode/reverse_geocode_response_model.dart';

class MapLocationMapper {
  MapLocationMapper._();

  static MapLocation fromGeocodeAddress(GeocodeAddressModel model) {
    return MapLocation(
      latitude: model.latitudeValue,
      longitude: model.longitudeValue,
      roadAddress: model.roadAddress,
      jibunAddress: model.jibunAddress,
      englishAddress: model.englishAddress,
      buildingName: model.buildingName,
      distanceMeters: model.distance,
    );
  }

  static MapLocation fromLocalSearchItem(
    LocalSearchItemModel item, {
    double? nearLatitude,
    double? nearLongitude,
  }) {
    final ({double latitude, double longitude}) coords =
        _convertCoordinates(item.mapx, item.mapy);

    double? distanceMeters;
    if (nearLatitude != null && nearLongitude != null) {
      distanceMeters = _haversineMeters(
        nearLatitude,
        nearLongitude,
        coords.latitude,
        coords.longitude,
      );
    }

    return MapLocation(
      latitude: coords.latitude,
      longitude: coords.longitude,
      roadAddress: item.roadAddress,
      jibunAddress: item.address,
      buildingName: item.plainTitle,
      distanceMeters: distanceMeters,
    );
  }

  static MapLocation fromReverseGeocode({
    required double latitude,
    required double longitude,
    required List<ReverseGeocodeResultModel> results,
  }) {
    String roadAddress = '';
    String jibunAddress = '';
    String buildingName = '';

    for (final ReverseGeocodeResultModel result in results) {
      if (result.name == 'roadaddr') {
        roadAddress = _formatAddress(result);
        buildingName = _buildingName(result);
      } else if (result.name == 'addr') {
        jibunAddress = _formatAddress(result);
      }
    }

    return MapLocation(
      latitude: latitude,
      longitude: longitude,
      roadAddress: roadAddress,
      jibunAddress: jibunAddress,
      buildingName: buildingName,
    );
  }

  static String _formatAddress(ReverseGeocodeResultModel result) {
    final ReverseGeocodeRegionModel? region = result.region;
    if (region == null) {
      return '';
    }

    final List<String> parts = <String>[
      if (region.area1?.name.isNotEmpty ?? false) region.area1!.name,
      if (region.area2?.name.isNotEmpty ?? false) region.area2!.name,
      if (region.area3?.name.isNotEmpty ?? false) region.area3!.name,
      if (region.area4?.name.isNotEmpty ?? false) region.area4!.name,
    ];

    final ReverseGeocodeLandModel? land = result.land;
    if (land != null && result.name == 'roadaddr') {
      if (land.name.isNotEmpty) {
        parts.add(
          '${land.name}${land.number1.isNotEmpty ? ' ${land.number1}' : ''}'
              .trim(),
        );
      }
      final String building = land.addition0?.value ?? '';
      if (building.isNotEmpty) {
        parts.add(building);
      }
    } else if (land != null && result.name == 'addr') {
      if (land.number1.isNotEmpty) {
        final String lot = land.number2.isNotEmpty
            ? '${land.number1}-${land.number2}'
            : land.number1;
        parts.add(land.type == '2' ? '산$lot' : lot);
      }
    }

    return parts.join(' ').trim();
  }

  static String _buildingName(ReverseGeocodeResultModel result) {
    final ReverseGeocodeAdditionModel? addition = result.land?.addition0;
    if (addition?.type == 'building') {
      return addition?.value ?? '';
    }
    return '';
  }

  static ({double latitude, double longitude}) _convertCoordinates(
    String mapx,
    String mapy,
  ) {
    final double x = double.parse(mapx);
    final double y = double.parse(mapy);

    const List<double> divisors = <double>[10000000, 1000000, 100000];

    for (final double divisor in divisors) {
      final double longitude = x / divisor;
      final double latitude = y / divisor;
      if (_isPlausibleKoreaLatLng(latitude, longitude)) {
        return (latitude: latitude, longitude: longitude);
      }
    }

    return (latitude: 0, longitude: 0);
  }

  static bool _isPlausibleKoreaLatLng(double latitude, double longitude) {
    return latitude >= 33 &&
        latitude <= 39.5 &&
        longitude >= 124 &&
        longitude <= 132;
  }

  static double _haversineMeters(
    double lat1,
    double lon1,
    double lat2,
    double lon2,
  ) {
    const double earthRadiusM = 6371000;
    final double dLat = _toRadians(lat2 - lat1);
    final double dLon = _toRadians(lon2 - lon1);
    final double a = math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.cos(_toRadians(lat1)) *
            math.cos(_toRadians(lat2)) *
            math.sin(dLon / 2) *
            math.sin(dLon / 2);
    final double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
    return earthRadiusM * c;
  }

  static double _toRadians(double degrees) => degrees * math.pi / 180;
}
