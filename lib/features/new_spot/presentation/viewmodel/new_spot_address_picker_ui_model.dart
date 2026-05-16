import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/maps/entity/map_location.dart';

part 'new_spot_address_picker_ui_model.freezed.dart';

@freezed
abstract class NewSpotAddressPickerUiModel with _$NewSpotAddressPickerUiModel {
  const factory NewSpotAddressPickerUiModel({
    MapLocation? selectedLocation,
    @Default(false) bool isLoading,
    @Default(false) bool isInitializingLocation,
    String? errorMessage,
  }) = _NewSpotAddressPickerUiModel;
}
