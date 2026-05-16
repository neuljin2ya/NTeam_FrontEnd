import 'package:freezed_annotation/freezed_annotation.dart';

part 'spot_detail_video_ui_model.freezed.dart';

@freezed
abstract class SpotDetailVideoUiModel with _$SpotDetailVideoUiModel {
  const factory SpotDetailVideoUiModel({
    required int videoId,
    required String title,
    /// `api/file/download` 바이너리를 임시 파일로 저장한 로컬 경로.
    required String videoUrl,
  }) = _SpotDetailVideoUiModel;
}
