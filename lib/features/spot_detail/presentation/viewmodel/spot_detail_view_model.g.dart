// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_detail_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SpotDetailViewModel)
final spotDetailViewModelProvider = SpotDetailViewModelProvider._();

final class SpotDetailViewModelProvider
    extends $NotifierProvider<SpotDetailViewModel, SpotDetailUiModel> {
  SpotDetailViewModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'spotDetailViewModelProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$spotDetailViewModelHash();

  @$internal
  @override
  SpotDetailViewModel create() => SpotDetailViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SpotDetailUiModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SpotDetailUiModel>(value),
    );
  }
}

String _$spotDetailViewModelHash() =>
    r'323ef50921b2f263b9fd33522f9403fadbca0988';

abstract class _$SpotDetailViewModel extends $Notifier<SpotDetailUiModel> {
  SpotDetailUiModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SpotDetailUiModel, SpotDetailUiModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<SpotDetailUiModel, SpotDetailUiModel>,
        SpotDetailUiModel,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
