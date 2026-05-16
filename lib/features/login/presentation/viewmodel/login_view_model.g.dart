// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoginViewModel)
final loginViewModelProvider = LoginViewModelProvider._();

final class LoginViewModelProvider
    extends $NotifierProvider<LoginViewModel, LoginLoadState> {
  LoginViewModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'loginViewModelProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$loginViewModelHash();

  @$internal
  @override
  LoginViewModel create() => LoginViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginLoadState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginLoadState>(value),
    );
  }
}

String _$loginViewModelHash() => r'313706f888eaedac17daccf073069a987138add6';

abstract class _$LoginViewModel extends $Notifier<LoginLoadState> {
  LoginLoadState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<LoginLoadState, LoginLoadState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<LoginLoadState, LoginLoadState>,
        LoginLoadState,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
