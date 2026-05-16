import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_spot_status_response_model.freezed.dart';
part 'add_spot_status_response_model.g.dart';

@freezed
abstract class AddSpotStatusResponseModel with _$AddSpotStatusResponseModel {
  const factory AddSpotStatusResponseModel({
    required bool isSuccess,
    required String code,
    required String message,
    List<String>? result,
  }) = _AddSpotStatusResponseModel;

  factory AddSpotStatusResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddSpotStatusResponseModelFromJson(json);

  const AddSpotStatusResponseModel._();
}
