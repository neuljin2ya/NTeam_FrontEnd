import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/entity/api_response.dart';
import '../../../spot/data/providers/spot_providers.dart';

part 'spot_detail_review_view_model.g.dart';

@riverpod
class SpotDetailReviewViewModel extends _$SpotDetailReviewViewModel {
  @override
  bool build() => false;

  Future<String?> submit({
    required int spotId,
    required String description,
    required List<String> statuses,
  }) async {
    if (state) {
      return null;
    }

    state = true;

    try {
      final ApiResponse<List<String>> response =
          await ref.read(addSpotStatusUseCaseProvider).call(
                spotId: spotId,
                description: description,
                statuses: statuses,
              );

      if (!_isSuccess(response)) {
        return response.message.isNotEmpty
            ? response.message
            : '스팟 상태를 등록하지 못했습니다.';
      }

      return null;
    } catch (_) {
      return '스팟 상태를 등록하지 못했습니다.';
    } finally {
      state = false;
    }
  }

  bool _isSuccess(ApiResponse<List<String>> response) {
    final String code = response.code;
    final bool isSuccessCode = code.startsWith('COMMON200') ||
        code.startsWith('SPOT200') ||
        code.startsWith('SPOT201');

    if (!isSuccessCode) {
      return false;
    }

    return response.data != null;
  }
}
