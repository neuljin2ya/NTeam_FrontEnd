import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../entity/api_response.dart';
import '../mappers/api_response_mapper.dart';
import '../models/api_response_model.dart';

part 'api_response_decoder.g.dart';

/// [ApiResponseModel] JSON 파싱 및 domain [ApiResponse] 변환.
class ApiResponseDecoder {
  const ApiResponseDecoder();

  ApiResponseModel<T> fromJson<T>(
    Map<String, dynamic> json, {
    required T Function(Object? json) fromJsonT,
  }) =>
      ApiResponseModel<T>.fromJson(json, fromJsonT);

  ApiResponseModel<Object?> fromJsonWithoutData(Map<String, dynamic> json) =>
      fromJson<Object?>(json, fromJsonT: (_) => null);

  ApiResponse<T> toDomain<T>(ApiResponseModel<T> model) =>
      ApiResponseMapper.toEntity(model);

  ApiResponse<T> fromJsonToDomain<T>(
    Map<String, dynamic> json, {
    required T Function(Object? json) fromJsonT,
  }) =>
      toDomain(fromJson(json, fromJsonT: fromJsonT));
}

@Riverpod(keepAlive: true)
ApiResponseDecoder apiResponseDecoder(Ref ref) => const ApiResponseDecoder();
