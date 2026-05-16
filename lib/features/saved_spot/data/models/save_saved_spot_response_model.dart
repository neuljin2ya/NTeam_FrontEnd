import 'package:freezed_annotation/freezed_annotation.dart';

import 'saved_spot_result_model.dart';

part 'save_saved_spot_response_model.freezed.dart';
part 'save_saved_spot_response_model.g.dart';

@freezed
abstract class SaveSavedSpotResponseModel with _$SaveSavedSpotResponseModel {
  const factory SaveSavedSpotResponseModel({
    required bool isSuccess,
    required String code,
    required String message,
    SavedSpotResultModel? result,
  }) = _SaveSavedSpotResponseModel;

  factory SaveSavedSpotResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SaveSavedSpotResponseModelFromJson(json);

  const SaveSavedSpotResponseModel._();
}
