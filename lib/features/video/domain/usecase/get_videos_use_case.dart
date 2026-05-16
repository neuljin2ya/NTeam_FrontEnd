import '../../../../common/entity/api_response.dart';
import '../entity/video.dart';
import '../repository/video_repository.dart';

class GetVideosUseCase {
  const GetVideosUseCase(this._repository);

  final VideoRepository _repository;

  Future<ApiResponse<List<Video>>> call({required int spotId}) {
    return _repository.getVideos(spotId: spotId);
  }
}
