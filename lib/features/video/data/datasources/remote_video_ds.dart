import 'package:dio/dio.dart';

import '../models/create_video_request_model.dart';
import '../models/create_video_response_model.dart';
import '../models/get_videos_response_model.dart';
import 'video_rest_api.dart';

class RemoteVideoDataSource {
  RemoteVideoDataSource(this._api);

  final VideoRestApi _api;

  Future<GetVideosResponseModel> getVideos({required int spotId}) async {
    try {
      return await _api.getVideos(spotId: spotId);
    } on DioException catch (e) {
      final Object? data = e.response?.data;
      if (data is Map<String, dynamic>) {
        return GetVideosResponseModel.fromJson(data);
      }
      rethrow;
    }
  }

  Future<CreateVideoResponseModel> createVideo(
    CreateVideoRequestModel body,
  ) async {
    try {
      return await _api.createVideo(body.toJson());
    } on DioException catch (e) {
      final Object? data = e.response?.data;
      if (data is Map<String, dynamic>) {
        return CreateVideoResponseModel.fromJson(data);
      }
      rethrow;
    }
  }
}
