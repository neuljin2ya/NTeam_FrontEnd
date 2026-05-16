import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../spot/domain/entity/spot.dart';

part 'download_spot_ui_model.freezed.dart';

@freezed
abstract class DownloadSpotUiModel with _$DownloadSpotUiModel {
  const factory DownloadSpotUiModel({
    @Default(<Spot>[]) List<Spot> spots,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _DownloadSpotUiModel;
}
