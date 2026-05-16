import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../spot/domain/entity/spot.dart';
import 'spot_detail_video_ui_model.dart';

part 'spot_detail_ui_model.freezed.dart';

@freezed
abstract class SpotDetailUiModel with _$SpotDetailUiModel {
  const factory SpotDetailUiModel({
    @Default(false) bool isLoading,
    Spot? spot,
    /// `api/file/download`로 받은 캡션 이미지 바이너리.
    Uint8List? captionImageBytes,
    @Default(false) bool isVideosLoading,
    @Default(<SpotDetailVideoUiModel>[]) List<SpotDetailVideoUiModel> videos,
    @Default(false) bool isSavingSpot,
    String? errorMessage,
  }) = _SpotDetailUiModel;
}
