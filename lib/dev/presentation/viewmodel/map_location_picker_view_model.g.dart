// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_location_picker_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MapLocationPickerViewModel)
final mapLocationPickerViewModelProvider =
    MapLocationPickerViewModelProvider._();

final class MapLocationPickerViewModelProvider extends $NotifierProvider<
    MapLocationPickerViewModel, MapLocationPickerUiModel> {
  MapLocationPickerViewModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'mapLocationPickerViewModelProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$mapLocationPickerViewModelHash();

  @$internal
  @override
  MapLocationPickerViewModel create() => MapLocationPickerViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MapLocationPickerUiModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MapLocationPickerUiModel>(value),
    );
  }
}

String _$mapLocationPickerViewModelHash() =>
    r'1c2fe912d039a19667d7c6503e75a6da5e1d8654';

abstract class _$MapLocationPickerViewModel
    extends $Notifier<MapLocationPickerUiModel> {
  MapLocationPickerUiModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<MapLocationPickerUiModel, MapLocationPickerUiModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<MapLocationPickerUiModel, MapLocationPickerUiModel>,
        MapLocationPickerUiModel,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
