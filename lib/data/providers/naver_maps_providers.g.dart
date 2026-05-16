// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'naver_maps_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(naverMapsDio)
final naverMapsDioProvider = NaverMapsDioProvider._();

final class NaverMapsDioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  NaverMapsDioProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'naverMapsDioProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$naverMapsDioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return naverMapsDio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$naverMapsDioHash() => r'7d762b2dc26a0bd6e303400df85fe1c9a54723ed';

@ProviderFor(naverMapsHttpClient)
final naverMapsHttpClientProvider = NaverMapsHttpClientProvider._();

final class NaverMapsHttpClientProvider extends $FunctionalProvider<
    NaverMapsHttpClient,
    NaverMapsHttpClient,
    NaverMapsHttpClient> with $Provider<NaverMapsHttpClient> {
  NaverMapsHttpClientProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'naverMapsHttpClientProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$naverMapsHttpClientHash();

  @$internal
  @override
  $ProviderElement<NaverMapsHttpClient> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  NaverMapsHttpClient create(Ref ref) {
    return naverMapsHttpClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NaverMapsHttpClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NaverMapsHttpClient>(value),
    );
  }
}

String _$naverMapsHttpClientHash() =>
    r'b05c8a75f1532ceb5c24e91e095075edcd9b80e0';

@ProviderFor(remoteNaverGeocodeDataSource)
final remoteNaverGeocodeDataSourceProvider =
    RemoteNaverGeocodeDataSourceProvider._();

final class RemoteNaverGeocodeDataSourceProvider extends $FunctionalProvider<
    RemoteNaverGeocodeDataSource,
    RemoteNaverGeocodeDataSource,
    RemoteNaverGeocodeDataSource> with $Provider<RemoteNaverGeocodeDataSource> {
  RemoteNaverGeocodeDataSourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'remoteNaverGeocodeDataSourceProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$remoteNaverGeocodeDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemoteNaverGeocodeDataSource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RemoteNaverGeocodeDataSource create(Ref ref) {
    return remoteNaverGeocodeDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteNaverGeocodeDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteNaverGeocodeDataSource>(value),
    );
  }
}

String _$remoteNaverGeocodeDataSourceHash() =>
    r'db8f629e88bda71795422a92893bf71ba4d0f977';

@ProviderFor(remoteNaverReverseGeocodeDataSource)
final remoteNaverReverseGeocodeDataSourceProvider =
    RemoteNaverReverseGeocodeDataSourceProvider._();

final class RemoteNaverReverseGeocodeDataSourceProvider
    extends $FunctionalProvider<
        RemoteNaverReverseGeocodeDataSource,
        RemoteNaverReverseGeocodeDataSource,
        RemoteNaverReverseGeocodeDataSource>
    with $Provider<RemoteNaverReverseGeocodeDataSource> {
  RemoteNaverReverseGeocodeDataSourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'remoteNaverReverseGeocodeDataSourceProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() =>
      _$remoteNaverReverseGeocodeDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemoteNaverReverseGeocodeDataSource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RemoteNaverReverseGeocodeDataSource create(Ref ref) {
    return remoteNaverReverseGeocodeDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteNaverReverseGeocodeDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<RemoteNaverReverseGeocodeDataSource>(value),
    );
  }
}

String _$remoteNaverReverseGeocodeDataSourceHash() =>
    r'46fe8477bfa22fd813b09acffefed305acc871b2';

@ProviderFor(remoteNaverLocalSearchDataSource)
final remoteNaverLocalSearchDataSourceProvider =
    RemoteNaverLocalSearchDataSourceProvider._();

final class RemoteNaverLocalSearchDataSourceProvider
    extends $FunctionalProvider<RemoteNaverLocalSearchDataSource,
        RemoteNaverLocalSearchDataSource, RemoteNaverLocalSearchDataSource>
    with $Provider<RemoteNaverLocalSearchDataSource> {
  RemoteNaverLocalSearchDataSourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'remoteNaverLocalSearchDataSourceProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$remoteNaverLocalSearchDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemoteNaverLocalSearchDataSource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RemoteNaverLocalSearchDataSource create(Ref ref) {
    return remoteNaverLocalSearchDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteNaverLocalSearchDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<RemoteNaverLocalSearchDataSource>(value),
    );
  }
}

String _$remoteNaverLocalSearchDataSourceHash() =>
    r'cd32c18db67eaaa6e7ac0ae6d1ca6c5361229786';

@ProviderFor(mapsRepository)
final mapsRepositoryProvider = MapsRepositoryProvider._();

final class MapsRepositoryProvider
    extends $FunctionalProvider<MapsRepository, MapsRepository, MapsRepository>
    with $Provider<MapsRepository> {
  MapsRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'mapsRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$mapsRepositoryHash();

  @$internal
  @override
  $ProviderElement<MapsRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MapsRepository create(Ref ref) {
    return mapsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MapsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MapsRepository>(value),
    );
  }
}

String _$mapsRepositoryHash() => r'8a7d440c01cc23fade5da9fd544e7a0e46025d27';

@ProviderFor(searchLocationsUseCase)
final searchLocationsUseCaseProvider = SearchLocationsUseCaseProvider._();

final class SearchLocationsUseCaseProvider extends $FunctionalProvider<
    SearchLocationsUseCase,
    SearchLocationsUseCase,
    SearchLocationsUseCase> with $Provider<SearchLocationsUseCase> {
  SearchLocationsUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'searchLocationsUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$searchLocationsUseCaseHash();

  @$internal
  @override
  $ProviderElement<SearchLocationsUseCase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SearchLocationsUseCase create(Ref ref) {
    return searchLocationsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SearchLocationsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SearchLocationsUseCase>(value),
    );
  }
}

String _$searchLocationsUseCaseHash() =>
    r'2b9fd26685299c99d3a6afdfa378e7561187df8f';

@ProviderFor(reverseGeocodeUseCase)
final reverseGeocodeUseCaseProvider = ReverseGeocodeUseCaseProvider._();

final class ReverseGeocodeUseCaseProvider extends $FunctionalProvider<
    ReverseGeocodeUseCase,
    ReverseGeocodeUseCase,
    ReverseGeocodeUseCase> with $Provider<ReverseGeocodeUseCase> {
  ReverseGeocodeUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'reverseGeocodeUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$reverseGeocodeUseCaseHash();

  @$internal
  @override
  $ProviderElement<ReverseGeocodeUseCase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ReverseGeocodeUseCase create(Ref ref) {
    return reverseGeocodeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReverseGeocodeUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReverseGeocodeUseCase>(value),
    );
  }
}

String _$reverseGeocodeUseCaseHash() =>
    r'2ec924f0b9d3fcf007e3cbb23db83b86d7551e58';
