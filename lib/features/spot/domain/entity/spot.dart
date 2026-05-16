import 'package:freezed_annotation/freezed_annotation.dart';

import 'spot_status_list.dart';

part 'spot.freezed.dart';

@freezed
abstract class Spot with _$Spot {
  const factory Spot({
    required int spotId,
    required String name,
    required String captionImgUrl,
    required double latitude,
    required double longitude,
    required String mainAddress,
    required String subAddress,
    required String difficulty,
    required String description,
    @Default(<String>[]) List<String> features,
    @Default(<SpotStatusList>[]) List<SpotStatusList> statusList,
    required DateTime createdAt,
  }) = _Spot;

  const Spot._();

  /// API는 `spotStatusListId` 오름차순으로 내려주므로 마지막 항목이 최신 상태입니다.
  SpotStatusList? get latestStatusList {
    if (statusList.isEmpty) {
      return null;
    }

    return statusList.reduce(
      (SpotStatusList current, SpotStatusList candidate) =>
          candidate.spotStatusListId > current.spotStatusListId
              ? candidate
              : current,
    );
  }

  String get fullAddress {
    if (mainAddress.isEmpty) {
      return subAddress;
    }
    if (subAddress.isEmpty) {
      return mainAddress;
    }
    return '$mainAddress $subAddress';
  }
}
