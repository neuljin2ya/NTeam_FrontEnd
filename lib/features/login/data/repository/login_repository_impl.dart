import '../../../../common/entity/api_response.dart';
import '../../domain/entity/auth_me.dart';
import '../../domain/entity/login_request.dart';
import '../../domain/repository/login_repository.dart';
import '../datasources/remote_login_ds.dart';
import '../mappers/login_mapper.dart';
import '../models/auth_me_response_model.dart';
import '../models/login_response_model.dart';

class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl(this._dataSource);

  final RemoteLoginDataSource _dataSource;

  @override
  Future<ApiResponse<AuthMe>> getAuthMe(String deviceToken) async {
    final AuthMeResponseModel response =
        await _dataSource.getAuthMe(deviceToken);

    return ApiResponse<AuthMe>(
      code: response.code,
      message: response.message,
      data: response.result != null
          ? LoginMapper.toAuthMe(response.result!)
          : null,
    );
  }

  @override
  Future<ApiResponse<String>> login(LoginRequest request) async {
    final LoginResponseModel response = await _dataSource.login(
      LoginMapper.toRequestModel(request),
    );

    return ApiResponse<String>(
      code: response.code,
      message: response.message,
      data: response.data,
    );
  }
}
