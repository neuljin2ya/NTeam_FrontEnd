// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backend_dio_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(backendDio)
final backendDioProvider = BackendDioProvider._();

final class BackendDioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  BackendDioProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'backendDioProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$backendDioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return backendDio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$backendDioHash() => r'edc3780913d8def68b86013d12a46212c82f3056';
