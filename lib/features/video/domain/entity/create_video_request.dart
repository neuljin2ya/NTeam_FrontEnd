import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_video_request.freezed.dart';

@freezed
abstract class CreateVideoRequest with _$CreateVideoRequest {
  const factory CreateVideoRequest({
    required int spotId,
    required String title,
    required String videoUrl,
  }) = _CreateVideoRequest;
}
