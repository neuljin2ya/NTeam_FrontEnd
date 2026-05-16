import '../../../../common/entity/api_response.dart';
import '../entity/create_video_request.dart';
import '../entity/video.dart';

abstract class VideoRepository {
  Future<ApiResponse<List<Video>>> getVideos({required int spotId});

  Future<ApiResponse<Video>> createVideo(CreateVideoRequest request);
}
