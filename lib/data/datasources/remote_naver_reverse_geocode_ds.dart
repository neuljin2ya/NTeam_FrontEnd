import 'package:dio/dio.dart';

import '../../constants/naver_maps_endpoints.dart';
import '../../domain/maps/exception/maps_exception.dart';
import '../models/reverse_geocode/reverse_geocode_response_model.dart';
import 'naver_maps_http_client.dart';

class RemoteNaverReverseGeocodeDataSource {
  RemoteNaverReverseGeocodeDataSource(this._httpClient);

  final NaverMapsHttpClient _httpClient;

  Future<ReverseGeocodeResponseModel> reverseGeocode({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final Response<dynamic> response = await _httpClient.dio.get<dynamic>(
        '${NaverMapsEndpoints.reverseGeocodeBaseUrl}/gc',
        queryParameters: <String, dynamic>{
          'coords': '$longitude,$latitude',
          'sourcecrs': 'epsg:4326',
          'orders': 'roadaddr,addr',
          'output': 'json',
        },
        options: Options(headers: _httpClient.mapsGatewayHeaders()),
      );

      final Map<String, dynamic> data =
          _httpClient.responseAsMap(response.data);
      final ReverseGeocodeResponseModel result =
          ReverseGeocodeResponseModel.fromJson(data);

      if (!result.isOk) {
        throw MapsException(
          result.status.message.isNotEmpty
              ? result.status.message
              : '좌표를 주소로 변환하지 못했습니다.',
        );
      }

      if (result.results.isEmpty) {
        throw MapsException('해당 좌표의 주소를 찾을 수 없습니다.');
      }

      return result;
    } on DioException catch (e) {
      throw _httpClient.mapDioException(
        e,
        fallback: 'Reverse Geocoding API 호출에 실패했습니다.',
      );
    }
  }
}
