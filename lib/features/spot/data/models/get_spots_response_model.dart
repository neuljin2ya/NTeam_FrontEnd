import 'package:freezed_annotation/freezed_annotation.dart';

import 'spot_model.dart';

part 'get_spots_response_model.freezed.dart';
part 'get_spots_response_model.g.dart';

@freezed
abstract class GetSpotsResponseModel with _$GetSpotsResponseModel {
  const factory GetSpotsResponseModel({
    required String code,
    required String message,
    @JsonKey(name: 'result') List<SpotModel>? data,
  }) = _GetSpotsResponseModel;

  factory GetSpotsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetSpotsResponseModelFromJson(json);

  const GetSpotsResponseModel._();

  bool get isSuccess => code.startsWith('SPOT200');
}
