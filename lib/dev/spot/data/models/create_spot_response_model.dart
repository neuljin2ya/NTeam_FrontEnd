import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_spot_data_model.dart';

part 'create_spot_response_model.freezed.dart';
part 'create_spot_response_model.g.dart';

@freezed
abstract class CreateSpotResponseModel with _$CreateSpotResponseModel {
  const factory CreateSpotResponseModel({
    required String code,
    required String message,
    CreateSpotDataModel? data,
  }) = _CreateSpotResponseModel;

  factory CreateSpotResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateSpotResponseModelFromJson(json);

  const CreateSpotResponseModel._();

  bool get isSuccess => code.startsWith('SPOT201');
}
