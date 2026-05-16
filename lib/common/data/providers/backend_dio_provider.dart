import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../constants/endpoints.dart';
import '../datasources/device_token_interceptor.dart';
import '../local/device_token_storage.dart';
import 'device_token_storage_provider.dart';

part 'backend_dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio backendDio(Ref ref) {
  final DeviceTokenStorage storage = ref.watch(deviceTokenStorageProvider);
  return Dio(
    BaseOptions(
      baseUrl: Endpoints.baseUrl,
      connectTimeout: const Duration(
        milliseconds: Endpoints.connectionTimeout,
      ),
      receiveTimeout: const Duration(milliseconds: Endpoints.receiveTimeout),
      headers: const <String, dynamic>{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      validateStatus: (int? status) => status != null && status < 500,
    ),
  )..interceptors.add(DeviceTokenInterceptor(storage));
}
