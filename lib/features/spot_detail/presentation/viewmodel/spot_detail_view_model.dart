import 'dart:async';
import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/downloaded_file_store.dart';
import '../../../../common/entity/api_response.dart';
import '../../../file/data/providers/file_providers.dart';
import '../../../saved_spot/data/providers/saved_spot_providers.dart';
import '../../../saved_spot/domain/entity/saved_spot.dart';
import '../../../spot/data/providers/spot_providers.dart';
import '../../../spot/domain/entity/get_spots_query.dart';
import '../../../spot/domain/entity/spot.dart';
import '../../../video/data/providers/video_providers.dart';
import '../../../video/domain/entity/video.dart';
import 'spot_detail_ui_model.dart';
import 'spot_detail_video_ui_model.dart';

part 'spot_detail_view_model.g.dart';

@riverpod
class SpotDetailViewModel extends _$SpotDetailViewModel {
  @override
  SpotDetailUiModel build() => const SpotDetailUiModel();

  Future<void> loadSpot(int spotId, {bool refresh = false}) async {
    if (refresh) {
      state = state.copyWith(
        isLoading: true,
        errorMessage: null,
      );
    } else {
      state = state.copyWith(
        isLoading: true,
        errorMessage: null,
        spot: null,
        captionImageBytes: null,
        isVideosLoading: false,
        videos: <SpotDetailVideoUiModel>[],
      );
    }

    try {
      final ApiResponse<List<Spot>> response = await ref
          .read(getSpotsUseCaseProvider)
          .call(GetSpotsQuery(spotId: spotId));

      if (!_isSuccess(response.code)) {
        state = state.copyWith(
          isLoading: false,
          errorMessage: response.message,
        );
        return;
      }

      final List<Spot> spots = response.data ?? <Spot>[];
      if (spots.isEmpty) {
        state = state.copyWith(
          isLoading: false,
          errorMessage: '스팟 정보를 찾을 수 없습니다.',
        );
        return;
      }

      final Spot spot = spots.first;
      state = state.copyWith(
        isLoading: false,
        spot: spot,
        errorMessage: null,
      );

      if (refresh) {
        return;
      }

      await _resolveCaptionImageUrl(spot.captionImgUrl);
      unawaited(_loadVideos(spotId));
    } catch (_) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: '스팟 정보를 불러오지 못했습니다.',
      );
    }
  }

  Future<void> reloadVideos(int spotId) => _loadVideos(spotId);

  /// 성공 시 `null`, 실패 시 사용자에게 보여줄 메시지.
  Future<String?> saveSpot(int spotId) async {
    if (state.isSavingSpot) {
      return null;
    }

    state = state.copyWith(isSavingSpot: true);

    try {
      final ApiResponse<SavedSpot> response =
          await ref.read(saveSpotUseCaseProvider).call(spotId: spotId);

      if (!_isSaveSuccess(response)) {
        return response.message.isNotEmpty
            ? response.message
            : '스팟을 저장하지 못했습니다.';
      }

      return null;
    } catch (_) {
      return '스팟을 저장하지 못했습니다.';
    } finally {
      state = state.copyWith(isSavingSpot: false);
    }
  }

  Future<void> _loadVideos(int spotId) async {
    state = state.copyWith(isVideosLoading: true);

    try {
      final ApiResponse<List<Video>> response =
          await ref.read(getVideosUseCaseProvider).call(spotId: spotId);

      if (!_isSuccess(response.code)) {
        state = state.copyWith(isVideosLoading: false);
        return;
      }

      final List<Video> videos = response.data ?? <Video>[];
      final List<SpotDetailVideoUiModel> resolvedVideos =
          <SpotDetailVideoUiModel>[];

      for (final Video video in videos) {
        final SpotDetailVideoUiModel? item = await _resolveVideoItem(video);
        if (item != null) {
          resolvedVideos.add(item);
        }
      }

      state = state.copyWith(
        isVideosLoading: false,
        videos: resolvedVideos,
      );
    } catch (_) {
      state = state.copyWith(isVideosLoading: false);
    }
  }

  Future<SpotDetailVideoUiModel?> _resolveVideoItem(Video video) async {
    final String trimmedUrl = video.url.trim();
    if (trimmedUrl.isEmpty) {
      return null;
    }

    try {
      final Uint8List bytes =
          await ref.read(getFileUseCaseProvider).call(trimmedUrl);
      if (bytes.isEmpty) {
        return null;
      }

      final String localPath = await DownloadedFileStore.saveBytes(
        sourceKey: trimmedUrl,
        bytes: bytes,
        extension: DownloadedFileStore.extensionFromUrl(trimmedUrl),
      );

      return SpotDetailVideoUiModel(
        videoId: video.videoId,
        title: video.title,
        videoUrl: localPath,
      );
    } catch (_) {
      return null;
    }
  }

  Future<void> _resolveCaptionImageUrl(String fileUrl) async {
    final String trimmed = fileUrl.trim();
    if (trimmed.isEmpty) {
      return;
    }

    try {
      final Uint8List bytes =
          await ref.read(getFileUseCaseProvider).call(trimmed);
      if (bytes.isEmpty) {
        return;
      }

      state = state.copyWith(captionImageBytes: bytes);
    } catch (_) {
      state = state.copyWith(captionImageBytes: null);
    }
  }

  bool _isSuccess(String code) =>
      code.startsWith('SPOT200') || code.startsWith('COMMON200');

  bool _isSaveSuccess(ApiResponse<SavedSpot> response) {
    if (response.data == null) {
      return false;
    }

    return response.code.startsWith('COMMON200') ||
        response.code.startsWith('SAVED_SPOT');
  }
}
