import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/maps/entity/map_location.dart';

part 'map_location_picker_ui_model.freezed.dart';

@freezed
abstract class MapLocationPickerUiModel with _$MapLocationPickerUiModel {
  const factory MapLocationPickerUiModel({
    MapLocation? selectedLocation,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _MapLocationPickerUiModel;
}
