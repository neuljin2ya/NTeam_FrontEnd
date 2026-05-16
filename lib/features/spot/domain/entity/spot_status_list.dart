import 'package:freezed_annotation/freezed_annotation.dart';

part 'spot_status_list.freezed.dart';

@freezed
abstract class SpotStatusList with _$SpotStatusList {
  const factory SpotStatusList({
    required int spotStatusListId,
    required String description,
    @Default(<String>[]) List<String> statuses,
  }) = _SpotStatusList;
}
