import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_load_state.freezed.dart';

@freezed
sealed class LoginLoadState with _$LoginLoadState {
  const factory LoginLoadState.idle() = LoginLoadIdle;

  const factory LoginLoadState.loading() = LoginLoadLoading;

  const factory LoginLoadState.success() = LoginLoadSuccess;

  const factory LoginLoadState.failure(String message) = LoginLoadFailure;
}
