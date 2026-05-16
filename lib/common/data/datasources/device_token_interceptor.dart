import 'package:dio/dio.dart';

import '../../../constants/endpoints.dart';
import '../local/device_token_storage.dart';

/// 로그인 이후 저장된 deviceToken을 API 요청 헤더에 추가합니다.
/// 로그인·가입 엔드포인트는 헤더를 붙이지 않습니다.
class DeviceTokenInterceptor extends Interceptor {
  DeviceTokenInterceptor(this._storage);

  final DeviceTokenStorage _storage;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    if (!Endpoints.shouldAttachDeviceTokenHeader(options.uri.path)) {
      handler.next(options);
      return;
    }

    final String? token = _storage.deviceToken;
    if (token != null && token.isNotEmpty) {
      options.headers['deviceToken'] = token;
    }
    handler.next(options);
  }
}
