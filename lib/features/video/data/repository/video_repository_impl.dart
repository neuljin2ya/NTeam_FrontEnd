import '../../../../common/entity/api_response.dart';
import '../../domain/entity/create_video_request.dart';
import '../../domain/entity/video.dart';
import '../../domain/repository/video_repository.dart';
import '../datasources/remote_video_ds.dart';
import '../mappers/video_mapper.dart';
import '../models/create_video_response_model.dart';
import '../models/get_videos_response_model.dart';

class VideoRepositoryImpl implements VideoRepository {
  VideoRepositoryImpl(this._dataSource);

  final RemoteVideoDataSource _dataSource;

  @override
  Future<ApiResponse<List<Video>>> getVideos({required int spotId}) async {
    final GetVideosResponseModel response =
        await _dataSource.getVideos(spotId: spotId);

    return ApiResponse<List<Video>>(
      code: response.code,
      message: response.message,
      data: response.result?.map(VideoMapper.toEntity).toList(),
    );
  }

  @override
  Future<ApiResponse<Video>> createVideo(CreateVideoRequest request) async {
    final CreateVideoResponseModel response = await _dataSource.createVideo(
      VideoMapper.toRequestModel(request),
    );

    return ApiResponse<Video>(
      code: response.code,
      message: response.message,
      data: response.result != null
          ? VideoMapper.toEntity(response.result!)
          : null,
    );
  }
}
