import '../../domain/entity/login_request.dart';
import '../models/login_request_model.dart';

class LoginMapper {
  LoginMapper._();

  static LoginRequestModel toRequestModel(LoginRequest request) {
    return LoginRequestModel(
      deviceToken: request.deviceToken,
      nickname: request.nickname,
    );
  }
}
