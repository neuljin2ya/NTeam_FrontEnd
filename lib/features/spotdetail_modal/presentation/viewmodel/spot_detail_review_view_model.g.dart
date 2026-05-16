// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_detail_review_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SpotDetailReviewViewModel)
final spotDetailReviewViewModelProvider = SpotDetailReviewViewModelProvider._();

final class SpotDetailReviewViewModelProvider
    extends $NotifierProvider<SpotDetailReviewViewModel, bool> {
  SpotDetailReviewViewModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'spotDetailReviewViewModelProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$spotDetailReviewViewModelHash();

  @$internal
  @override
  SpotDetailReviewViewModel create() => SpotDetailReviewViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$spotDetailReviewViewModelHash() =>
    r'6af3baf21f1a706fbf035dbfa8805e4052363afb';

abstract class _$SpotDetailReviewViewModel extends $Notifier<bool> {
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
