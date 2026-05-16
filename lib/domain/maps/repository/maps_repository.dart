import '../entity/map_location.dart';
import '../entity/search_locations_query.dart';

abstract class MapsRepository {
  /// 주소·장소명 검색 (Geocoding → 지역 검색 fallback).
  Future<List<MapLocation>> searchLocations(SearchLocationsQuery query);

  /// 검색 결과 중 첫 번째 위치.
  Future<MapLocation> geocodeFirstLocation(SearchLocationsQuery query);

  /// 좌표 → 주소.
  Future<MapLocation> reverseGeocode({
    required double latitude,
    required double longitude,
  });

  /// 장소명 검색용 네이버 검색 Open API 키 설정 여부.
  bool get isLocalSearchConfigured;
}
