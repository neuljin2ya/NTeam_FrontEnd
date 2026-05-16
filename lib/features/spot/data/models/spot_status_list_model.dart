import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/data/converters/json_primitives_converter.dart';

part 'spot_status_list_model.freezed.dart';
part 'spot_status_list_model.g.dart';

@freezed
abstract class SpotStatusListModel with _$SpotStatusListModel {
  const factory SpotStatusListModel({
    @FlexibleIntConverter() required int spotStatusListId,
    @JsonKey(defaultValue: '') @Default('') String description,
    @Default(<String>[]) List<String> statuses,
  }) = _SpotStatusListModel;

  factory SpotStatusListModel.fromJson(Map<String, dynamic> json) =>
      _$SpotStatusListModelFromJson(json);
}
