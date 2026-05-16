import '../../../../common/entity/api_response.dart';
import '../entity/auth_me.dart';
import '../entity/login_request.dart';

abstract class LoginRepository {
  Future<ApiResponse<AuthMe>> getAuthMe(String deviceToken);

  Future<ApiResponse<String>> login(LoginRequest request);
}
