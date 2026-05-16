import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_spot_request_model.freezed.dart';
part 'create_spot_request_model.g.dart';

@freezed
abstract class CreateSpotRequestModel with _$CreateSpotRequestModel {
  const factory CreateSpotRequestModel({
    required String name,
    required String captionImgUrl,
    required String latitude,
    required String longitude,
    @JsonKey(name: 'main_address') required String mainAddress,
    @JsonKey(name: 'sub_address') required String subAddress,
    required String difficulty,
    required String description,
    @Default(<String>[]) List<String> features,
    @Default(<String>[]) List<String> statuses,
  }) = _CreateSpotRequestModel;

  factory CreateSpotRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateSpotRequestModelFromJson(json);
}
