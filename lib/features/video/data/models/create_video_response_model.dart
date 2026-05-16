import 'package:freezed_annotation/freezed_annotation.dart';

import 'video_model.dart';

part 'create_video_response_model.freezed.dart';
part 'create_video_response_model.g.dart';

@freezed
abstract class CreateVideoResponseModel with _$CreateVideoResponseModel {
  const factory CreateVideoResponseModel({
    required bool isSuccess,
    required String code,
    required String message,
    VideoModel? result,
  }) = _CreateVideoResponseModel;

  factory CreateVideoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateVideoResponseModelFromJson(json);

  const CreateVideoResponseModel._();
}
