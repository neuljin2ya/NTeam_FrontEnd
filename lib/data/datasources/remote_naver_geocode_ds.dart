import 'package:dio/dio.dart';

import '../../constants/naver_maps_endpoints.dart';
import '../../domain/maps/exception/maps_exception.dart';
import '../models/geocode/geocode_request_params.dart';
import '../models/geocode/geocode_response_model.dart';
import 'naver_maps_http_client.dart';

class RemoteNaverGeocodeDataSource {
  RemoteNaverGeocodeDataSource(this._httpClient);

  final NaverMapsHttpClient _httpClient;

  Future<GeocodeResponseModel> geocode(GeocodeRequestParams request) async {
    final String query = request.query.trim();
    if (query.isEmpty) {
      throw MapsException('query(검색할 주소)는 필수입니다.');
    }

    if (request.centerLongitude != null && request.centerLatitude == null ||
        request.centerLongitude == null && request.centerLatitude != null) {
      throw MapsException('coordinate는 경도·위도를 함께 지정해야 합니다.');
    }

    try {
      final Response<dynamic> response = await _httpClient.dio.get<dynamic>(
        '${NaverMapsEndpoints.geocodeBaseUrl}/geocode',
        queryParameters: request.toQueryParameters(),
        options: Options(headers: _httpClient.mapsGatewayHeaders()),
      );

      final Map<String, dynamic> data =
          _httpClient.responseAsMap(response.data);
      final GeocodeResponseModel result =
          GeocodeResponseModel.fromJson(data);

      if (!result.isOk) {
        throw MapsException(
          result.errorMessage ?? 'Geocoding 요청이 실패했습니다.',
        );
      }

      return result;
    } on DioException catch (e) {
      throw _httpClient.mapDioException(
        e,
        fallback: 'Geocoding API 호출에 실패했습니다.',
      );
    }
  }
}
