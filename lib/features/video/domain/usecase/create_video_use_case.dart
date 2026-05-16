import '../../../../common/entity/api_response.dart';
import '../entity/create_video_request.dart';
import '../entity/video.dart';
import '../repository/video_repository.dart';

class CreateVideoUseCase {
  const CreateVideoUseCase(this._repository);

  final VideoRepository _repository;

  Future<ApiResponse<Video>> call(CreateVideoRequest request) {
    return _repository.createVideo(request);
  }
}
