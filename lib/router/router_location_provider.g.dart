// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_location_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// [GoRouter] 경로 변경 시 현재 URI path를 노출합니다.

@ProviderFor(RouterLocation)
final routerLocationProvider = RouterLocationProvider._();

/// [GoRouter] 경로 변경 시 현재 URI path를 노출합니다.
final class RouterLocationProvider
    extends $NotifierProvider<RouterLocation, String> {
  /// [GoRouter] 경로 변경 시 현재 URI path를 노출합니다.
  RouterLocationProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'routerLocationProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$routerLocationHash();

  @$internal
  @override
  RouterLocation create() => RouterLocation();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$routerLocationHash() => r'1daedba90871fd17e3d2e6d2e9f155d22675eaf8';

/// [GoRouter] 경로 변경 시 현재 URI path를 노출합니다.

abstract class _$RouterLocation extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<String, String>, String, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}
