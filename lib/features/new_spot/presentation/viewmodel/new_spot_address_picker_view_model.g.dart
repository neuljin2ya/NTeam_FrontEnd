// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_spot_address_picker_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NewSpotAddressPickerViewModel)
final newSpotAddressPickerViewModelProvider =
    NewSpotAddressPickerViewModelProvider._();

final class NewSpotAddressPickerViewModelProvider extends $NotifierProvider<
    NewSpotAddressPickerViewModel, NewSpotAddressPickerUiModel> {
  NewSpotAddressPickerViewModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'newSpotAddressPickerViewModelProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$newSpotAddressPickerViewModelHash();

  @$internal
  @override
  NewSpotAddressPickerViewModel create() => NewSpotAddressPickerViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NewSpotAddressPickerUiModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NewSpotAddressPickerUiModel>(value),
    );
  }
}

String _$newSpotAddressPickerViewModelHash() =>
    r'b5865aeeb882683b7e8a0b237e38f2d97104eac1';

abstract class _$NewSpotAddressPickerViewModel
    extends $Notifier<NewSpotAddressPickerUiModel> {
  NewSpotAddressPickerUiModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref
        as $Ref<NewSpotAddressPickerUiModel, NewSpotAddressPickerUiModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<NewSpotAddressPickerUiModel, NewSpotAddressPickerUiModel>,
        NewSpotAddressPickerUiModel,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
