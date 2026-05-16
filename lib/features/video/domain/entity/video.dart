import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';

@freezed
abstract class Video with _$Video {
  const factory Video({
    required int videoId,
    required String url,
    required String title,
    required DateTime createdAt,
    required String createdBy,
  }) = _Video;
}
