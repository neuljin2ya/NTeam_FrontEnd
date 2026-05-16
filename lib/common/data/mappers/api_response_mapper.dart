import '../../entity/api_response.dart';
import '../models/api_response_model.dart';

class ApiResponseMapper {
  ApiResponseMapper._();

  static ApiResponse<T> toEntity<T>(ApiResponseModel<T> model) {
    return ApiResponse<T>(
      code: model.code,
      message: model.message,
      data: model.data,
    );
  }

  static ApiResponseModel<T> toModel<T>(ApiResponse<T> entity) {
    return ApiResponseModel<T>(
      code: entity.code,
      message: entity.message,
      data: entity.data,
    );
  }
}
