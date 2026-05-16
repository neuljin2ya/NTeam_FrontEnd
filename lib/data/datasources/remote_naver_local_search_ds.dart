import 'dart:math' as math;

import 'package:dio/dio.dart';

import '../../constants/naver_maps_endpoints.dart';
import '../../domain/maps/entity/map_location.dart';
import '../../domain/maps/exception/maps_exception.dart';
import '../mappers/map_location_mapper.dart';
import '../models/local_search/local_search_response_model.dart';
import 'naver_maps_http_client.dart';

class RemoteNaverLocalSearchDataSource {
  RemoteNaverLocalSearchDataSource(this._httpClient);

  final NaverMapsHttpClient _httpClient;

  bool get isConfigured => _httpClient.isOpenApiConfigured;

  Future<List<LocalSearchItemModel>> search({
    required String query,
    int maxResults = 30,
    double? nearLatitude,
    double? nearLongitude,
  }) async {
    final String trimmed = query.trim();
    if (trimmed.isEmpty) {
      return <LocalSearchItemModel>[];
    }

    final Map<String, String>? headers = _httpClient.openApiHeaders();
    if (headers == null) {
      return <LocalSearchItemModel>[];
    }

    final int targetCount = maxResults.clamp(1, 100);
    final List<LocalSearchItemModel> items = <LocalSearchItemModel>[];
    int start = 1;
    int? totalAvailable;

    try {
      while (items.length < targetCount) {
        final int requestDisplay = math.min(
          NaverMapsEndpoints.localSearchPageSize,
          targetCount - items.length,
        );

        final Response<dynamic> response = await _httpClient.dio.get<dynamic>(
          NaverMapsEndpoints.localSearchUrl,
          queryParameters: <String, dynamic>{
            'query': trimmed,
            'display': requestDisplay,
            'start': start,
            'sort': 'random',
          },
          options: Options(headers: headers),
        );

        final Map<String, dynamic> data =
            _httpClient.responseAsMap(response.data);
        final LocalSearchResponseModel page =
            LocalSearchResponseModel.fromJson(data);
        totalAvailable ??= page.total;

        if (page.items.isEmpty) {
          break;
        }

        items.addAll(page.items);
        if (items.length >= targetCount) {
          break;
        }

        if (page.items.length < requestDisplay) {
          break;
        }
        if (start + page.items.length > totalAvailable) {
          break;
        }

        start += page.items.length;
      }

      final List<LocalSearchItemModel> trimmedItems =
          items.take(targetCount).toList();

      if (nearLatitude != null && nearLongitude != null) {
        trimmedItems.sort((LocalSearchItemModel a, LocalSearchItemModel b) {
          final MapLocation locA = MapLocationMapper.fromLocalSearchItem(
            a,
            nearLatitude: nearLatitude,
            nearLongitude: nearLongitude,
          );
          final MapLocation locB = MapLocationMapper.fromLocalSearchItem(
            b,
            nearLatitude: nearLatitude,
            nearLongitude: nearLongitude,
          );
          final double da = locA.distanceMeters ?? double.infinity;
          final double db = locB.distanceMeters ?? double.infinity;
          return da.compareTo(db);
        });
      }

      return trimmedItems;
    } on DioException catch (e) {
      final Response<dynamic>? errorResponse = e.response;
      if (errorResponse?.data is Map<String, dynamic>) {
        final Map<String, dynamic> err =
            errorResponse!.data as Map<String, dynamic>;
        final String message =
            err['errorMessage'] as String? ?? '지역 검색 API 호출에 실패했습니다.';
        throw MapsException(message);
      }
      throw MapsException('지역 검색 API 호출에 실패했습니다.');
    }
  }
}
