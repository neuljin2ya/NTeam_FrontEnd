import 'package:flutter_naver_map/flutter_naver_map.dart';

import '../domain/maps/entity/map_location.dart';

extension MapLocationNaverMapX on MapLocation {
  NLatLng get latLng => NLatLng(latitude, longitude);
}
