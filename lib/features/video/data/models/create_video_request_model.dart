import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_video_request_model.freezed.dart';
part 'create_video_request_model.g.dart';

@freezed
abstract class CreateVideoRequestModel with _$CreateVideoRequestModel {
  const factory CreateVideoRequestModel({
    required int spotId,
    required String title,
    required String videoUrl,
  }) = _CreateVideoRequestModel;

  factory CreateVideoRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateVideoRequestModelFromJson(json);
}
