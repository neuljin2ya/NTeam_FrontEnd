import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../domain/maps/exception/maps_exception.dart';

class NaverMapsHttpClient {
  NaverMapsHttpClient({Dio? dio})
      : _dio = dio ??
            Dio(
              BaseOptions(
                connectTimeout: const Duration(seconds: 10),
                receiveTimeout: const Duration(seconds: 10),
              ),
            );

  final Dio _dio;

  Dio get dio => _dio;

  Map<String, String> mapsGatewayHeaders() {
    final String? apiKeyId = dotenv.env['NAVER_MAPS_CLIENT_KEY'];
    final String? apiKey = dotenv.env['NAVER_MAPS_CLIENT_SECRET'];
    if (apiKeyId == null ||
        apiKeyId.isEmpty ||
        apiKey == null ||
        apiKey.isEmpty) {
      throw MapsException(
        'NAVER_MAPS_CLIENT_KEY, NAVER_MAPS_CLIENT_SECRET가 .env에 설정되어 있어야 합니다.',
      );
    }
    return <String, String>{
      'x-ncp-apigw-api-key-id': apiKeyId,
      'x-ncp-apigw-api-key': apiKey,
      'Accept': 'application/json',
    };
  }

  Map<String, String>? openApiHeaders() {
    final String? clientId = dotenv.env['NAVER_OPEN_API_CLIENT_ID'];
    final String? clientSecret = dotenv.env['NAVER_OPEN_API_CLIENT_SECRET'];
    if (clientId == null ||
        clientId.isEmpty ||
        clientSecret == null ||
        clientSecret.isEmpty) {
      return null;
    }
    return <String, String>{
      'X-Naver-Client-Id': clientId,
      'X-Naver-Client-Secret': clientSecret,
    };
  }

  bool get isOpenApiConfigured => openApiHeaders() != null;

  MapsException mapDioException(
    DioException error, {
    required String fallback,
  }) {
    final Response<dynamic>? response = error.response;
    if (response?.data is Map<String, dynamic>) {
      final Map<String, dynamic> data =
          response!.data as Map<String, dynamic>;
      final String? errorMessage = data['errorMessage'] as String?;
      if (errorMessage != null && errorMessage.isNotEmpty) {
        return MapsException(errorMessage);
      }
      final String? status = data['status'] as String?;
      if (status == 'INVALID_REQUEST') {
        return MapsException('요청 파라미터가 올바르지 않습니다.');
      }
    }
    return MapsException(fallback);
  }

  Map<String, dynamic> responseAsMap(dynamic data) {
    if (data is! Map<String, dynamic>) {
      throw MapsException('API 응답 형식이 올바르지 않습니다.');
    }
    return data;
  }
}
