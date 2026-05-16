import '../../../../common/entity/api_response.dart';
import '../entity/login_request.dart';
import '../repository/login_repository.dart';

class LoginUseCase {
  const LoginUseCase(this._repository);

  final LoginRepository _repository;

  Future<ApiResponse<String>> call(LoginRequest request) {
    return _repository.login(request);
  }
}
