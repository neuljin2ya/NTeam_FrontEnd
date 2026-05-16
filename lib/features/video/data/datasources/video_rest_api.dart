import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../constants/endpoints.dart';
import '../models/create_video_response_model.dart';
import '../models/get_videos_response_model.dart';

part 'video_rest_api.g.dart';

@RestApi()
abstract class VideoRestApi {
  factory VideoRestApi(Dio dio, {String baseUrl}) = _VideoRestApi;

  @GET(Endpoints.video)
  Future<GetVideosResponseModel> getVideos({
    @Query('spotId') required int spotId,
  });

  @POST(Endpoints.video)
  Future<CreateVideoResponseModel> createVideo(
    @Body() Map<String, dynamic> body,
  );
}
