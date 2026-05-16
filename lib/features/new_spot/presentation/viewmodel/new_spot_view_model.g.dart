// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_spot_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NewSpotViewModel)
final newSpotViewModelProvider = NewSpotViewModelProvider._();

final class NewSpotViewModelProvider
    extends $NotifierProvider<NewSpotViewModel, NewSpotUiModel> {
  NewSpotViewModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'newSpotViewModelProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$newSpotViewModelHash();

  @$internal
  @override
  NewSpotViewModel create() => NewSpotViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NewSpotUiModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NewSpotUiModel>(value),
    );
  }
}

String _$newSpotViewModelHash() => r'83b1bd102ab0f28dfa420c8ad810115a5ee63099';

abstract class _$NewSpotViewModel extends $Notifier<NewSpotUiModel> {
  NewSpotUiModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<NewSpotUiModel, NewSpotUiModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<NewSpotUiModel, NewSpotUiModel>,
        NewSpotUiModel,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
