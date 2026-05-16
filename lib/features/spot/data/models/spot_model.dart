import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/data/converters/json_primitives_converter.dart';
import '../converters/flexible_spot_status_list_converter.dart';
import 'spot_status_list_model.dart';

part 'spot_model.freezed.dart';
part 'spot_model.g.dart';

@freezed
abstract class SpotModel with _$SpotModel {
  const factory SpotModel({
    @FlexibleIntConverter() required int spotId,
    required String name,
    @JsonKey(defaultValue: '') @Default('') String captionImgUrl,
    @FlexibleDoubleConverter() required double latitude,
    @FlexibleDoubleConverter() required double longitude,
    required String mainAddress,
    required String subAddress,
    required String difficulty,
    @JsonKey(defaultValue: '') @Default('') String description,
    @Default(<String>[]) List<String> features,
    @FlexibleSpotStatusListConverter()
    @Default(<SpotStatusListModel>[])
    List<SpotStatusListModel> statusList,
    @FlexibleDateTimeConverter() required DateTime createdAt,
  }) = _SpotModel;

  factory SpotModel.fromJson(Map<String, dynamic> json) =>
      _$SpotModelFromJson(json);
}
