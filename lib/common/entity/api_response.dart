import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

/// 백엔드 공용 응답 envelope (`code`, `message`, `data`).
@freezed
abstract class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    required String code,
    required String message,
    T? data,
  }) = _ApiResponse<T>;

  const ApiResponse._();

  bool get hasData => data != null;
}
