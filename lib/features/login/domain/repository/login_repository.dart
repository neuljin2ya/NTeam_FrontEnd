import '../../../../common/entity/api_response.dart';
import '../entity/login_request.dart';

abstract class LoginRepository {
  Future<ApiResponse<String>> login(LoginRequest request);
}
