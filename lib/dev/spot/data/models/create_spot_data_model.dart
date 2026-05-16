import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_spot_data_model.freezed.dart';
part 'create_spot_data_model.g.dart';

@freezed
abstract class CreateSpotDataModel with _$CreateSpotDataModel {
  const factory CreateSpotDataModel({
    @JsonKey(name: 'spot_id') required int spotId,
  }) = _CreateSpotDataModel;

  factory CreateSpotDataModel.fromJson(Map<String, dynamic> json) =>
      _$CreateSpotDataModelFromJson(json);
}
