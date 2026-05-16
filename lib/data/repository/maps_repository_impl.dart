import '../../domain/maps/entity/map_location.dart';
import '../../domain/maps/entity/search_locations_query.dart';
import '../../domain/maps/exception/maps_exception.dart';
import '../../domain/maps/repository/maps_repository.dart';
import '../datasources/remote_naver_geocode_ds.dart';
import '../datasources/remote_naver_local_search_ds.dart';
import '../datasources/remote_naver_reverse_geocode_ds.dart';
import '../mappers/map_location_mapper.dart';
import '../models/geocode/geocode_request_params.dart';
import '../models/geocode/geocode_response_model.dart';
import '../models/local_search/local_search_response_model.dart';
import '../models/reverse_geocode/reverse_geocode_response_model.dart';

class MapsRepositoryImpl implements MapsRepository {
  MapsRepositoryImpl({
    required RemoteNaverGeocodeDataSource geocodeDataSource,
    required RemoteNaverReverseGeocodeDataSource reverseGeocodeDataSource,
    required RemoteNaverLocalSearchDataSource localSearchDataSource,
  })  : _geocodeDataSource = geocodeDataSource,
        _reverseGeocodeDataSource = reverseGeocodeDataSource,
        _localSearchDataSource = localSearchDataSource;

  final RemoteNaverGeocodeDataSource _geocodeDataSource;
  final RemoteNaverReverseGeocodeDataSource _reverseGeocodeDataSource;
  final RemoteNaverLocalSearchDataSource _localSearchDataSource;

  @override
  bool get isLocalSearchConfigured => _localSearchDataSource.isConfigured;

  @override
  Future<List<MapLocation>> searchLocations(SearchLocationsQuery query) async {
    final String trimmed = query.query.trim();
    if (trimmed.isEmpty) {
      throw MapsException('검색어를 입력해 주세요.');
    }

    final GeocodeResponseModel geocodeResponse =
        await _geocodeDataSource.geocode(
      GeocodeRequestParams(
        query: trimmed,
        centerLatitude: query.nearLatitude,
        centerLongitude: query.nearLongitude,
        languageCode: query.language.apiCode,
        page: query.page,
        count: query.count,
        filter: query.filter,
      ),
    );

    if (geocodeResponse.addresses.isNotEmpty) {
      return geocodeResponse.addresses
          .map(MapLocationMapper.fromGeocodeAddress)
          .toList();
    }

    final List<LocalSearchItemModel> localItems =
        await _localSearchDataSource.search(
      query: trimmed,
      maxResults: query.count,
      nearLatitude: query.nearLatitude,
      nearLongitude: query.nearLongitude,
    );

    if (localItems.isNotEmpty) {
      return localItems
          .map(
            (LocalSearchItemModel item) => MapLocationMapper.fromLocalSearchItem(
              item,
              nearLatitude: query.nearLatitude,
              nearLongitude: query.nearLongitude,
            ),
          )
          .toList();
    }

    if (!isLocalSearchConfigured) {
      throw MapsException(
        '검색 결과가 없습니다. 장소명(예: 부산대학교) 검색은 '
        '.env에 NAVER_OPEN_API_CLIENT_ID, NAVER_OPEN_API_CLIENT_SECRET '
        '(네이버 검색 API) 설정이 필요합니다.',
      );
    }

    return <MapLocation>[];
  }

  @override
  Future<MapLocation> geocodeFirstLocation(SearchLocationsQuery query) async {
    final List<MapLocation> results = await searchLocations(
      query.copyWith(count: 1),
    );
    if (results.isEmpty) {
      throw MapsException('검색 결과가 없습니다.');
    }
    return results.first;
  }

  @override
  Future<MapLocation> reverseGeocode({
    required double latitude,
    required double longitude,
  }) async {
    final ReverseGeocodeResponseModel response =
        await _reverseGeocodeDataSource.reverseGeocode(
      latitude: latitude,
      longitude: longitude,
    );
    return MapLocationMapper.fromReverseGeocode(
      latitude: latitude,
      longitude: longitude,
      results: response.results,
    );
  }
}
