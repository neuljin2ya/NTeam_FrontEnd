import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/data/local/device_token_storage.dart';
import '../../../../common/data/providers/device_token_storage_provider.dart';
import '../../../../common/data/services/device_id_service.dart';
import '../../../../common/entity/api_response.dart';
import '../../data/providers/login_providers.dart';
import '../../domain/entity/auth_me.dart';
import '../../domain/entity/login_request.dart';
import '../state/login_load_state.dart';

part 'login_view_model.g.dart';

@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  LoginLoadState build() => const LoginLoadState.idle();

  Future<void> login(String nickname) async {
    final String trimmed = nickname.trim();
    if (trimmed.isEmpty) {
      state = const LoginLoadState.failure('닉네임을 입력해 주세요.');
      return;
    }

    state = const LoginLoadState.loading();

    try {
      final String deviceToken = await DeviceIdService.getDeviceId();
      final DeviceTokenStorage storage =
          ref.read(deviceTokenStorageProvider);
      await storage.save(deviceToken);

      final ApiResponse<AuthMe> authMeResponse =
          await ref.read(getAuthMeUseCaseProvider).call(deviceToken);

      if (_isAuthMeRegistered(authMeResponse)) {
        state = const LoginLoadState.success();
        return;
      }

      final ApiResponse<String> response =
          await ref.read(loginUseCaseProvider).call(
                LoginRequest(
                  deviceToken: deviceToken,
                  nickname: trimmed,
                ),
              );

      if (_isLoginSuccess(response.code)) {
        state = const LoginLoadState.success();
        return;
      }

      state = LoginLoadState.failure(response.message);
    } catch (_) {
      state = const LoginLoadState.failure('로그인 중 오류가 발생했습니다.');
    }
  }

  bool _isLoginSuccess(String code) => code.startsWith('COMMON200');

  bool _isAuthMeRegistered(ApiResponse<AuthMe> response) {
    final AuthMe? authMe = response.data;
    return authMe != null && authMe.isRegistered;
  }
}
