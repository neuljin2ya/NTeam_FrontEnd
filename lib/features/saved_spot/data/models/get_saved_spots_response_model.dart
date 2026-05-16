import 'package:freezed_annotation/freezed_annotation.dart';

import 'saved_spot_list_item_model.dart';

part 'get_saved_spots_response_model.freezed.dart';
part 'get_saved_spots_response_model.g.dart';

@freezed
abstract class GetSavedSpotsResponseModel with _$GetSavedSpotsResponseModel {
  const factory GetSavedSpotsResponseModel({
    required bool isSuccess,
    required String code,
    required String message,
    @JsonKey(name: 'result') List<SavedSpotListItemModel>? data,
  }) = _GetSavedSpotsResponseModel;

  factory GetSavedSpotsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetSavedSpotsResponseModelFromJson(json);

  const GetSavedSpotsResponseModel._();
}
