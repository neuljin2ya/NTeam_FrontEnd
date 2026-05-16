// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_spot_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DownloadSpotViewModel)
final downloadSpotViewModelProvider = DownloadSpotViewModelProvider._();

final class DownloadSpotViewModelProvider
    extends $NotifierProvider<DownloadSpotViewModel, DownloadSpotUiModel> {
  DownloadSpotViewModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'downloadSpotViewModelProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$downloadSpotViewModelHash();

  @$internal
  @override
  DownloadSpotViewModel create() => DownloadSpotViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DownloadSpotUiModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DownloadSpotUiModel>(value),
    );
  }
}

String _$downloadSpotViewModelHash() =>
    r'706cefead09479506795d64804cd4973c04c399f';

abstract class _$DownloadSpotViewModel extends $Notifier<DownloadSpotUiModel> {
  DownloadSpotUiModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<DownloadSpotUiModel, DownloadSpotUiModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<DownloadSpotUiModel, DownloadSpotUiModel>,
        DownloadSpotUiModel,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
