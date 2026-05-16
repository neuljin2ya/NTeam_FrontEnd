import 'package:freezed_annotation/freezed_annotation.dart';

part 'spot_detail_video_ui_model.freezed.dart';

@freezed
abstract class SpotDetailVideoUiModel with _$SpotDetailVideoUiModel {
  const factory SpotDetailVideoUiModel({
    required int videoId,
    required String title,
    /// `api/file/download`로 변환된 영상 재생 URL.
    required String videoUrl,
  }) = _SpotDetailVideoUiModel;
}
