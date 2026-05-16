// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_video_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UploadVideoViewModel)
final uploadVideoViewModelProvider = UploadVideoViewModelProvider._();

final class UploadVideoViewModelProvider
    extends $NotifierProvider<UploadVideoViewModel, bool> {
  UploadVideoViewModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'uploadVideoViewModelProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$uploadVideoViewModelHash();

  @$internal
  @override
  UploadVideoViewModel create() => UploadVideoViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$uploadVideoViewModelHash() =>
    r'cb13aea473c317dd18dcd41cc6ebe0b0afc619ad';

abstract class _$UploadVideoViewModel extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<bool, bool>, bool, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}
