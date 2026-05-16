import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/difficulty_tag.dart';
import '../../../../common/entity/api_response.dart';
import '../../../../domain/maps/entity/map_location.dart';
import '../../../file/data/providers/file_providers.dart';
import '../../../file/domain/entity/uploaded_file.dart';
import '../../../spot/data/providers/spot_providers.dart';
import '../../../spot/domain/entity/create_spot_request.dart';
import '../../../spot/domain/entity/created_spot.dart';
import '../util/new_spot_address_mapper.dart';
import '../util/new_spot_constants.dart';
import 'new_spot_ui_model.dart';

part 'new_spot_view_model.g.dart';

@riverpod
class NewSpotViewModel extends _$NewSpotViewModel {
  @override
  NewSpotUiModel build() {
    return const NewSpotUiModel();
  }

  void setSpotName(String value) {
    state = state.copyWith(spotName: value, errorMessage: null);
  }

  void setSelectedLocation(MapLocation location) {
    state = state.copyWith(selectedLocation: location, errorMessage: null);
  }

  void setDifficulty(DifficultyLevel level) {
    state = state.copyWith(difficulty: level, errorMessage: null);
  }

  void toggleObstacle(String obstacleId) {
    final Set<String> next = Set<String>.from(state.selectedObstacleIds);
    if (next.contains(obstacleId)) {
      next.remove(obstacleId);
    } else {
      next.add(obstacleId);
    }
    state = state.copyWith(selectedObstacleIds: next, errorMessage: null);
  }

  void toggleEnvironmentTag(String tag) {
    final Set<String> next = Set<String>.from(state.selectedEnvironmentTags);
    if (next.contains(tag)) {
      next.remove(tag);
    } else {
      next.add(tag);
    }
    state = state.copyWith(selectedEnvironmentTags: next, errorMessage: null);
  }

  void clearEnvironmentTags() {
    state = state.copyWith(
      selectedEnvironmentTags: <String>{},
      errorMessage: null,
    );
  }

  void toggleObstacleSectionExpanded() {
    state = state.copyWith(
      isObstacleSectionExpanded: !state.isObstacleSectionExpanded,
    );
  }

  void setPhotoSource(NewSpotPhotoSource source) {
    state = state.copyWith(photoSource: source, errorMessage: null);
  }

  void setCaptionImagePath(String? path) {
    state = state.copyWith(captionImagePath: path, errorMessage: null);
  }

  bool _isSuccessCode(String code) => code.startsWith('COMMON200');

  Future<bool> submit() async {
    final String name = state.spotName.trim();
    if (name.isEmpty) {
      state = state.copyWith(errorMessage: '장소명을 입력해 주세요.');
      return false;
    }

    final MapLocation? location = state.selectedLocation;
    if (location == null) {
      state = state.copyWith(errorMessage: '주소를 선택해 주세요.');
      return false;
    }

    final String? imagePath = state.captionImagePath;
    if (imagePath == null || imagePath.trim().isEmpty) {
      state = state.copyWith(errorMessage: '대표 사진을 등록해 주세요.');
      return false;
    }

    if (state.selectedObstacleIds.isEmpty) {
      state = state.copyWith(errorMessage: '장애물 유형을 하나 이상 선택해 주세요.');
      return false;
    }

    if (state.selectedEnvironmentTags.isEmpty) {
      state = state.copyWith(errorMessage: '공간 환경을 하나 이상 선택해 주세요.');
      return false;
    }

    state = state.copyWith(isSubmitting: true, errorMessage: null);

    try {
      final ApiResponse<UploadedFile> uploadResponse =
          await ref.read(uploadFileUseCaseProvider).call(imagePath);

      if (!_isSuccessCode(uploadResponse.code) || uploadResponse.data == null) {
        state = state.copyWith(
          isSubmitting: false,
          errorMessage: uploadResponse.message.isNotEmpty
              ? uploadResponse.message
              : '이미지 업로드에 실패했습니다.',
        );
        return false;
      }

      final ({String main, String sub}) addressParts =
          NewSpotAddressMapper.fromMapLocation(location);

      final List<String> features = NewSpotConstants.buildFeatureKeys(
        obstacleIds: state.selectedObstacleIds,
        environmentIds: state.selectedEnvironmentTags,
      );

      final CreateSpotRequest request = CreateSpotRequest(
        name: name,
        captionImgUrl: uploadResponse.data!.fileUrl,
        latitude: location.latitude.toString(),
        longitude: location.longitude.toString(),
        mainAddress: addressParts.main,
        subAddress: addressParts.sub,
        difficulty: NewSpotConstants.difficultyApiValue(state.difficulty),
        description: '',
        features: features,
      );

      final ApiResponse<CreatedSpot> response =
          await ref.read(createSpotUseCaseProvider).call(request);

      if (_isSuccessCode(response.code)) {
        state = state.copyWith(isSubmitting: false);
        return true;
      }

      state = state.copyWith(
        isSubmitting: false,
        errorMessage: response.message.isNotEmpty
            ? response.message
            : '스팟 등록에 실패했습니다.',
      );
      return false;
    } catch (_) {
      state = state.copyWith(
        isSubmitting: false,
        errorMessage: '스팟 등록 중 오류가 발생했습니다.',
      );
      return false;
    }
  }
}
