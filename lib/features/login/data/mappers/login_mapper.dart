import '../../domain/entity/auth_me.dart';
import '../../domain/entity/login_request.dart';
import '../models/auth_me_result_model.dart';
import '../models/login_request_model.dart';

class LoginMapper {
  LoginMapper._();

  static LoginRequestModel toRequestModel(LoginRequest request) {
    return LoginRequestModel(
      deviceToken: request.deviceToken,
      nickname: request.nickname,
    );
  }

  static AuthMe toAuthMe(AuthMeResultModel model) {
    return AuthMe(nickName: model.nickName);
  }
}
