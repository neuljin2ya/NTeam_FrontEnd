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
  @override
  bool build() => false;

  Future<String?> upload({
    required int spotId,
    required String filePath,
    required String title,
  }) async {
    if (state) {
      return null;
    }

    state = true;

    try {
      final ApiResponse<UploadedFile> uploadResponse =
          await ref.read(uploadFileUseCaseProvider).call(filePath);

      if (!_isSuccess(uploadResponse.code) || uploadResponse.data == null) {
        return uploadResponse.message.isNotEmpty
            ? uploadResponse.message
            : '영상 파일 업로드에 실패했습니다.';
      }

      final CreateVideoRequest request = CreateVideoRequest(
        spotId: spotId,
        title: title,
        videoUrl: uploadResponse.data!.fileUrl,
      );

      final ApiResponse<Video> createResponse =
          await ref.read(createVideoUseCaseProvider).call(request);

      if (!_isSuccess(createResponse.code) || createResponse.data == null) {
        return createResponse.message.isNotEmpty
            ? createResponse.message
            : '영상 등록에 실패했습니다.';
      }

      return null;
    } catch (_) {
      return '영상 업로드 중 오류가 발생했습니다.';
    } finally {
      state = false;
    }
  }

  bool _isSuccess(String code) => code.startsWith('COMMON200');
}
