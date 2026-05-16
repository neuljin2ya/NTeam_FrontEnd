import '../../domain/entity/create_video_request.dart';
import '../../domain/entity/video.dart';
import '../models/create_video_request_model.dart';
import '../models/video_model.dart';

class VideoMapper {
  VideoMapper._();

  static Video toEntity(VideoModel model) {
    return Video(
      videoId: model.videoId,
      url: model.url,
      title: model.title,
      createdAt: model.createdAt,
      createdBy: model.createdBy,
    );
  }

  static CreateVideoRequestModel toRequestModel(CreateVideoRequest request) {
    return CreateVideoRequestModel(
      spotId: request.spotId,
      title: request.title,
      videoUrl: request.videoUrl,
    );
  }
}
