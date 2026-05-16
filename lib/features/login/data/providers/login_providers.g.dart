// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(loginRestApi)
final loginRestApiProvider = LoginRestApiProvider._();

final class LoginRestApiProvider
    extends $FunctionalProvider<LoginRestApi, LoginRestApi, LoginRestApi>
    with $Provider<LoginRestApi> {
  LoginRestApiProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'loginRestApiProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$loginRestApiHash();

  @$internal
  @override
  $ProviderElement<LoginRestApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoginRestApi create(Ref ref) {
    return loginRestApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginRestApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginRestApi>(value),
    );
  }
}

String _$loginRestApiHash() => r'75c672645c7a65e0504a4a7b61ea8ac5249ce3c2';

@ProviderFor(remoteLoginDataSource)
final remoteLoginDataSourceProvider = RemoteLoginDataSourceProvider._();

final class RemoteLoginDataSourceProvider extends $FunctionalProvider<
    RemoteLoginDataSource,
    RemoteLoginDataSource,
    RemoteLoginDataSource> with $Provider<RemoteLoginDataSource> {
  RemoteLoginDataSourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'remoteLoginDataSourceProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$remoteLoginDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemoteLoginDataSource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RemoteLoginDataSource create(Ref ref) {
    return remoteLoginDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteLoginDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteLoginDataSource>(value),
    );
  }
}

String _$remoteLoginDataSourceHash() =>
    r'ea6da33d0b984a5f087d176f6ac7a46fb7d8b4af';

@ProviderFor(loginRepository)
final loginRepositoryProvider = LoginRepositoryProvider._();

final class LoginRepositoryProvider extends $FunctionalProvider<LoginRepository,
    LoginRepository, LoginRepository> with $Provider<LoginRepository> {
  LoginRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'loginRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$loginRepositoryHash();

  @$internal
  @override
  $ProviderElement<LoginRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoginRepository create(Ref ref) {
    return loginRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginRepository>(value),
    );
  }
}

String _$loginRepositoryHash() => r'6a346a2f336563715b16bd1c10a549619c193b8d';

@ProviderFor(getAuthMeUseCase)
final getAuthMeUseCaseProvider = GetAuthMeUseCaseProvider._();

final class GetAuthMeUseCaseProvider extends $FunctionalProvider<
    GetAuthMeUseCase,
    GetAuthMeUseCase,
    GetAuthMeUseCase> with $Provider<GetAuthMeUseCase> {
  GetAuthMeUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getAuthMeUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getAuthMeUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAuthMeUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetAuthMeUseCase create(Ref ref) {
    return getAuthMeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAuthMeUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAuthMeUseCase>(value),
    );
  }
}

String _$getAuthMeUseCaseHash() => r'505223de9607b35bbe496f436270f9fb3c8bacce';

@ProviderFor(loginUseCase)
final loginUseCaseProvider = LoginUseCaseProvider._();

final class LoginUseCaseProvider
    extends $FunctionalProvider<LoginUseCase, LoginUseCase, LoginUseCase>
    with $Provider<LoginUseCase> {
  LoginUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'loginUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$loginUseCaseHash();

  @$internal
  @override
  $ProviderElement<LoginUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoginUseCase create(Ref ref) {
    return loginUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginUseCase>(value),
    );
  }
}

String _$loginUseCaseHash() => r'620a54f1ce212aadaff25e74502c0e1796f45f2b';
