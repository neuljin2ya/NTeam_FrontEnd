import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/difficulty_tag.dart';
import '../../../../domain/maps/entity/map_location.dart';

part 'new_spot_ui_model.freezed.dart';

enum NewSpotPhotoSource {
  gallery,
  camera,
}

@freezed
abstract class NewSpotUiModel with _$NewSpotUiModel {
  const factory NewSpotUiModel({
    @Default('') String spotName,
    MapLocation? selectedLocation,
    @Default(DifficultyLevel.low) DifficultyLevel difficulty,
    @Default(<String>{}) Set<String> selectedObstacleIds,
    @Default(<String>{}) Set<String> selectedEnvironmentTags,
    @Default(true) bool isObstacleSectionExpanded,
    String? captionImagePath,
    String? captionImgUrl,
    @Default(false) bool isUploadingCaption,
    NewSpotPhotoSource? photoSource,
    @Default(false) bool isSubmitting,
    String? errorMessage,
  }) = _NewSpotUiModel;
}
