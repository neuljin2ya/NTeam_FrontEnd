import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/entity/api_response.dart';
import '../../../file/data/providers/file_providers.dart';
import '../../../file/domain/entity/uploaded_file.dart';
import '../../../video/data/providers/video_providers.dart';
import '../../../video/domain/entity/create_video_request.dart';
import '../../../video/domain/entity/video.dart';

part 'upload_video_view_model.g.dart';

@riverpod
class UploadVideoViewModel extends _$UploadVideoViewModel {
  String? _uploadedVideoUrl;

  /// [api/file/upload] 성공 후 저장된 `fileUrl`.
  String? get uploadedVideoUrl => _uploadedVideoUrl;

  @override
  bool build() => false;

  void clearUploadedVideoUrl() {
    _uploadedVideoUrl = null;
  }

  /// 1단계: `POST api/file/upload` — 영상 파일 업로드 후 URL 저장.
  Future<String?> uploadVideoFile(String filePath) async {
    if (state) {
      return null;
    }

    state = true;

    try {
      final ApiResponse<UploadedFile> uploadResponse =
          await ref.read(uploadFileUseCaseProvider).call(filePath);

      if (!_isFileUploadSuccess(uploadResponse.code) ||
          uploadResponse.data == null) {
        _uploadedVideoUrl = null;
        return uploadResponse.message.isNotEmpty
            ? uploadResponse.message
            : '영상 파일 업로드에 실패했습니다.';
      }

      _uploadedVideoUrl = uploadResponse.data!.fileUrl;
      return null;
    } catch (_) {
      _uploadedVideoUrl = null;
      return '영상 파일 업로드 중 오류가 발생했습니다.';
    } finally {
      state = false;
    }
  }

  /// 2단계: `POST api/video` — 저장된 URL로 영상 메타 등록.
  Future<String?> registerVideo({
    required int spotId,
    required String title,
  }) async {
    final String? videoUrl = _uploadedVideoUrl;
    if (videoUrl == null || videoUrl.isEmpty) {
      return '영상 파일을 먼저 업로드해 주세요.';
    }

    if (state) {
      return null;
    }

    state = true;

    try {
      final CreateVideoRequest request = CreateVideoRequest(
        spotId: spotId,
        title: title,
        videoUrl: videoUrl,
      );

      final ApiResponse<Video> createResponse =
          await ref.read(createVideoUseCaseProvider).call(request);

      if (!_isVideoCreateSuccess(createResponse.code) ||
          createResponse.data == null) {
        return createResponse.message.isNotEmpty
            ? createResponse.message
            : '영상 등록에 실패했습니다.';
      }

      return null;
    } catch (_) {
      return '영상 등록 중 오류가 발생했습니다.';
    } finally {
      state = false;
    }
  }

  /// 파일 업로드 → 영상 등록 순서로 한 번에 처리.
  Future<String?> upload({
    required int spotId,
    required String filePath,
    required String title,
  }) async {
    final String? fileError = await uploadVideoFile(filePath);
    if (fileError != null) {
      return fileError;
    }

    return registerVideo(spotId: spotId, title: title);
  }

  bool _isFileUploadSuccess(String code) =>
      code.startsWith('COMMON200') || code.startsWith('FILE200');

  bool _isVideoCreateSuccess(String code) =>
      code.startsWith('COMMON200') || code.startsWith('VIDEO200');
}
