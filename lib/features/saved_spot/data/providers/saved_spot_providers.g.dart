// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_spot_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(savedSpotRestApi)
final savedSpotRestApiProvider = SavedSpotRestApiProvider._();

final class SavedSpotRestApiProvider extends $FunctionalProvider<
    SavedSpotRestApi,
    SavedSpotRestApi,
    SavedSpotRestApi> with $Provider<SavedSpotRestApi> {
  SavedSpotRestApiProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'savedSpotRestApiProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$savedSpotRestApiHash();

  @$internal
  @override
  $ProviderElement<SavedSpotRestApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SavedSpotRestApi create(Ref ref) {
    return savedSpotRestApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SavedSpotRestApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SavedSpotRestApi>(value),
    );
  }
}

String _$savedSpotRestApiHash() => r'c2788c80be75ba4f4e6f7363e2a662914fdbcf77';

@ProviderFor(remoteSavedSpotDataSource)
final remoteSavedSpotDataSourceProvider = RemoteSavedSpotDataSourceProvider._();

final class RemoteSavedSpotDataSourceProvider extends $FunctionalProvider<
    RemoteSavedSpotDataSource,
    RemoteSavedSpotDataSource,
    RemoteSavedSpotDataSource> with $Provider<RemoteSavedSpotDataSource> {
  RemoteSavedSpotDataSourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'remoteSavedSpotDataSourceProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$remoteSavedSpotDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemoteSavedSpotDataSource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RemoteSavedSpotDataSource create(Ref ref) {
    return remoteSavedSpotDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteSavedSpotDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteSavedSpotDataSource>(value),
    );
  }
}

String _$remoteSavedSpotDataSourceHash() =>
    r'308616f1a3e4cb3e00f0fedd9b700d319b60854a';

@ProviderFor(savedSpotRepository)
final savedSpotRepositoryProvider = SavedSpotRepositoryProvider._();

final class SavedSpotRepositoryProvider extends $FunctionalProvider<
    SavedSpotRepository,
    SavedSpotRepository,
    SavedSpotRepository> with $Provider<SavedSpotRepository> {
  SavedSpotRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'savedSpotRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$savedSpotRepositoryHash();

  @$internal
  @override
  $ProviderElement<SavedSpotRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SavedSpotRepository create(Ref ref) {
    return savedSpotRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SavedSpotRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SavedSpotRepository>(value),
    );
  }
}

String _$savedSpotRepositoryHash() =>
    r'c15112045a10930b52c771d3173239c04d002a8a';

@ProviderFor(getSavedSpotsUseCase)
final getSavedSpotsUseCaseProvider = GetSavedSpotsUseCaseProvider._();

final class GetSavedSpotsUseCaseProvider extends $FunctionalProvider<
    GetSavedSpotsUseCase,
    GetSavedSpotsUseCase,
    GetSavedSpotsUseCase> with $Provider<GetSavedSpotsUseCase> {
  GetSavedSpotsUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getSavedSpotsUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getSavedSpotsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetSavedSpotsUseCase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetSavedSpotsUseCase create(Ref ref) {
    return getSavedSpotsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetSavedSpotsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetSavedSpotsUseCase>(value),
    );
  }
}

String _$getSavedSpotsUseCaseHash() =>
    r'a32d27ae8d8eae3918e9fe03b4a2a28d903ec751';

@ProviderFor(saveSpotUseCase)
final saveSpotUseCaseProvider = SaveSpotUseCaseProvider._();

final class SaveSpotUseCaseProvider extends $FunctionalProvider<SaveSpotUseCase,
    SaveSpotUseCase, SaveSpotUseCase> with $Provider<SaveSpotUseCase> {
  SaveSpotUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'saveSpotUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$saveSpotUseCaseHash();

  @$internal
  @override
  $ProviderElement<SaveSpotUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SaveSpotUseCase create(Ref ref) {
    return saveSpotUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SaveSpotUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SaveSpotUseCase>(value),
    );
  }
}

String _$saveSpotUseCaseHash() => r'a7280bb69b3c85a8f2328060c10e7ff2b816783f';
