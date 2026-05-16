import '../../../../common/entity/api_response.dart';
import '../entity/auth_me.dart';
import '../repository/login_repository.dart';

class GetAuthMeUseCase {
  const GetAuthMeUseCase(this._repository);

  final LoginRepository _repository;

  Future<ApiResponse<AuthMe>> call(String deviceToken) {
    return _repository.getAuthMe(deviceToken);
  }
}
