// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_token_storage_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sharedPreferences)
final sharedPreferencesProvider = SharedPreferencesProvider._();

final class SharedPreferencesProvider extends $FunctionalProvider<
    SharedPreferences,
    SharedPreferences,
    SharedPreferences> with $Provider<SharedPreferences> {
  SharedPreferencesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'sharedPreferencesProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesHash();

  @$internal
  @override
  $ProviderElement<SharedPreferences> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SharedPreferences create(Ref ref) {
    return sharedPreferences(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SharedPreferences value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SharedPreferences>(value),
    );
  }
}

String _$sharedPreferencesHash() => r'98f63376f52c5d86a41d57af2db15810d27f528b';

@ProviderFor(deviceTokenStorage)
final deviceTokenStorageProvider = DeviceTokenStorageProvider._();

final class DeviceTokenStorageProvider extends $FunctionalProvider<
    DeviceTokenStorage,
    DeviceTokenStorage,
    DeviceTokenStorage> with $Provider<DeviceTokenStorage> {
  DeviceTokenStorageProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'deviceTokenStorageProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$deviceTokenStorageHash();

  @$internal
  @override
  $ProviderElement<DeviceTokenStorage> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DeviceTokenStorage create(Ref ref) {
    return deviceTokenStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeviceTokenStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeviceTokenStorage>(value),
    );
  }
}

String _$deviceTokenStorageHash() =>
    r'3c5019b7d13c520667d72574cc3c9ce4d9ff5e46';
