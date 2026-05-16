import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../app_logger.dart';

/// 백엔드 API 호출의 요청·응답·에러를 [AppLogger.api]로 출력합니다.
class ApiLoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      AppLogger.api.i(
        '[API REQUEST] ${options.method} ${options.uri}\n'
        'headers: ${options.headers}\n'
        'query: ${options.queryParameters}\n'
        'request: ${_formatPayload(options.data)}',
      );
    }
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    if (kDebugMode) {
      final RequestOptions options = response.requestOptions;
      AppLogger.api.i(
        '[API RESPONSE] ${options.method} ${options.uri}\n'
        'status: ${response.statusCode}\n'
        'response: ${_formatResponse(response.data)}',
      );
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      final RequestOptions options = err.requestOptions;
      final Response<dynamic>? errorResponse = err.response;
      AppLogger.api.e(
        '[API ERROR] ${options.method} ${options.uri}\n'
        'type: ${err.type}\n'
        'message: ${err.message}\n'
        'headers: ${options.headers}\n'
        'query: ${options.queryParameters}\n'
        'request: ${_formatPayload(options.data)}\n'
        'status: ${errorResponse?.statusCode}\n'
        'error response: ${_formatResponse(errorResponse?.data)}',
      );
    }
    handler.next(err);
  }

  static String _formatResponse(dynamic data) {
    if (data == null) {
      return 'null';
    }
    if (data is List<int>) {
      return '<binary ${data.length} bytes>';
    }
    return data.toString();
  }

  static String _formatPayload(dynamic data) {
    if (data == null) {
      return 'null';
    }
    if (data is FormData) {
      final String fields = data.fields
          .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
          .join(', ');
      final String files = data.files
          .map(
            (MapEntry<String, MultipartFile> e) =>
                '${e.key}: ${e.value.filename} (${e.value.length} bytes)',
          )
          .join(', ');
      return 'FormData(fields: [$fields], files: [$files])';
    }
    return data.toString();
  }
}
