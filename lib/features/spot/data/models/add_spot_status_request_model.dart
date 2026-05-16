import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_spot_status_request_model.freezed.dart';
part 'add_spot_status_request_model.g.dart';

@freezed
abstract class AddSpotStatusRequestModel with _$AddSpotStatusRequestModel {
  const factory AddSpotStatusRequestModel({
    required String description,
    required List<String> statuses,
  }) = _AddSpotStatusRequestModel;

  factory AddSpotStatusRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddSpotStatusRequestModelFromJson(json);
}
