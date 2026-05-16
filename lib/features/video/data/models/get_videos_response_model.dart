import 'package:freezed_annotation/freezed_annotation.dart';

import 'video_model.dart';

part 'get_videos_response_model.freezed.dart';
part 'get_videos_response_model.g.dart';

@freezed
abstract class GetVideosResponseModel with _$GetVideosResponseModel {
  const factory GetVideosResponseModel({
    required bool isSuccess,
    required String code,
    required String message,
    List<VideoModel>? result,
  }) = _GetVideosResponseModel;

  factory GetVideosResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetVideosResponseModelFromJson(json);

  const GetVideosResponseModel._();
}
