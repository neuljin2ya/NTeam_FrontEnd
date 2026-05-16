import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_saved_spot_request_model.freezed.dart';
part 'save_saved_spot_request_model.g.dart';

@freezed
abstract class SaveSavedSpotRequestModel with _$SaveSavedSpotRequestModel {
  const factory SaveSavedSpotRequestModel({
    @JsonKey(name: 'spot_id') required int spotId,
  }) = _SaveSavedSpotRequestModel;

  factory SaveSavedSpotRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveSavedSpotRequestModelFromJson(json);
}
