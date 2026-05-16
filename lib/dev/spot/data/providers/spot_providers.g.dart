// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(spotRestApi)
final spotRestApiProvider = SpotRestApiProvider._();

final class SpotRestApiProvider
    extends $FunctionalProvider<SpotRestApi, SpotRestApi, SpotRestApi>
    with $Provider<SpotRestApi> {
  SpotRestApiProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'spotRestApiProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$spotRestApiHash();

  @$internal
  @override
  $ProviderElement<SpotRestApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SpotRestApi create(Ref ref) {
    return spotRestApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SpotRestApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SpotRestApi>(value),
    );
  }
}

String _$spotRestApiHash() => r'91482fb20cdf466acc116d47c2aa80285946c956';

@ProviderFor(remoteSpotDataSource)
final remoteSpotDataSourceProvider = RemoteSpotDataSourceProvider._();

final class RemoteSpotDataSourceProvider extends $FunctionalProvider<
    RemoteSpotDataSource,
    RemoteSpotDataSource,
    RemoteSpotDataSource> with $Provider<RemoteSpotDataSource> {
  RemoteSpotDataSourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'remoteSpotDataSourceProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$remoteSpotDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemoteSpotDataSource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RemoteSpotDataSource create(Ref ref) {
    return remoteSpotDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteSpotDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteSpotDataSource>(value),
    );
  }
}

String _$remoteSpotDataSourceHash() =>
    r'224b2e43af52fd15e727a6eea6108d9671128bb5';

@ProviderFor(spotRepository)
final spotRepositoryProvider = SpotRepositoryProvider._();

final class SpotRepositoryProvider
    extends $FunctionalProvider<SpotRepository, SpotRepository, SpotRepository>
    with $Provider<SpotRepository> {
  SpotRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'spotRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$spotRepositoryHash();

  @$internal
  @override
  $ProviderElement<SpotRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SpotRepository create(Ref ref) {
    return spotRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SpotRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SpotRepository>(value),
    );
  }
}

String _$spotRepositoryHash() => r'9cb8c5aa2c742b286c7f3f55106d9878d6fb88c8';

@ProviderFor(getSpotsUseCase)
final getSpotsUseCaseProvider = GetSpotsUseCaseProvider._();

final class GetSpotsUseCaseProvider extends $FunctionalProvider<GetSpotsUseCase,
    GetSpotsUseCase, GetSpotsUseCase> with $Provider<GetSpotsUseCase> {
  GetSpotsUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getSpotsUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getSpotsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetSpotsUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetSpotsUseCase create(Ref ref) {
    return getSpotsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetSpotsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetSpotsUseCase>(value),
    );
  }
}

String _$getSpotsUseCaseHash() => r'aeafd67fb01bf849b097eec1a4949b4e933f77f5';

@ProviderFor(createSpotUseCase)
final createSpotUseCaseProvider = CreateSpotUseCaseProvider._();

final class CreateSpotUseCaseProvider extends $FunctionalProvider<
    CreateSpotUseCase,
    CreateSpotUseCase,
    CreateSpotUseCase> with $Provider<CreateSpotUseCase> {
  CreateSpotUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'createSpotUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$createSpotUseCaseHash();

  @$internal
  @override
  $ProviderElement<CreateSpotUseCase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CreateSpotUseCase create(Ref ref) {
    return createSpotUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateSpotUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateSpotUseCase>(value),
    );
  }
}

String _$createSpotUseCaseHash() => r'cedfe7301e69f0c137ae48bd6323d688e2c0662c';
