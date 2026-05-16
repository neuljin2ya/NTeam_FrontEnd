import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/entity/api_response.dart';
import '../../../saved_spot/data/providers/saved_spot_providers.dart';
import '../../../spot/data/providers/spot_providers.dart';
import '../../../spot/domain/entity/get_spots_query.dart';
import '../../../spot/domain/entity/spot.dart';
import '../../../spot/domain/usecase/get_spots_use_case.dart';
import 'download_spot_ui_model.dart';

part 'download_spot_view_model.g.dart';

@riverpod
class DownloadSpotViewModel extends _$DownloadSpotViewModel {
  @override
  DownloadSpotUiModel build() => const DownloadSpotUiModel();

  Future<void> loadSavedSpots() async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final ApiResponse<List<Spot>> response =
          await ref.read(getSavedSpotsUseCaseProvider).call();
      if (!ref.mounted) {
        return;
      }

      if (_isSuccess(response.code)) {
        final List<Spot> enrichedSpots =
            await _enrichSpotsWithCaptionUrls(response.data ?? <Spot>[]);
        if (!ref.mounted) {
          return;
        }

        state = state.copyWith(
          isLoading: false,
          spots: enrichedSpots,
          errorMessage: null,
        );
        return;
      }

      state = state.copyWith(
        isLoading: false,
        spots: <Spot>[],
        errorMessage: response.message,
      );
    } catch (_) {
      if (!ref.mounted) {
        return;
      }
      state = state.copyWith(
        isLoading: false,
        spots: <Spot>[],
        errorMessage: '저장한 스팟 목록을 불러오지 못했습니다.',
      );
    }
  }

  /// 저장 스팟 목록 API는 `captionImgUrl`을 내려주지 않아 스팟 상세 조회로 보완합니다.
  Future<List<Spot>> _enrichSpotsWithCaptionUrls(List<Spot> spots) async {
    if (spots.isEmpty) {
      return spots;
    }

    final GetSpotsUseCase getSpots = ref.read(getSpotsUseCaseProvider);
    return Future.wait(
      spots.map((Spot spot) => _enrichSpotCaptionUrl(spot, getSpots)),
    );
  }

  Future<Spot> _enrichSpotCaptionUrl(Spot spot, GetSpotsUseCase getSpots) async {
    if (spot.captionImgUrl.trim().isNotEmpty) {
      return spot;
    }

    try {
      final ApiResponse<List<Spot>> response =
          await getSpots(GetSpotsQuery(spotId: spot.spotId));
      if (!_isSuccess(response.code)) {
        return spot;
      }

      final List<Spot> details = response.data ?? <Spot>[];
      if (details.isEmpty) {
        return spot;
      }

      final String captionImgUrl = details.first.captionImgUrl.trim();
      if (captionImgUrl.isEmpty) {
        return spot;
      }

      return spot.copyWith(captionImgUrl: captionImgUrl);
    } catch (_) {
      return spot;
    }
  }

  bool _isSuccess(String code) =>
      code.startsWith('SAVED_SPOT200') ||
      code.startsWith('COMMON200') ||
      code.startsWith('SPOT200');
}
