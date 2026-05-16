import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/data/converters/json_primitives_converter.dart';

part 'spot_model.freezed.dart';
part 'spot_model.g.dart';

@freezed
abstract class SpotModel with _$SpotModel {
  const factory SpotModel({
    @FlexibleIntConverter() required int spotId,
    required String name,
    required String captionImgUrl,
    @FlexibleDoubleConverter() required double latitude,
    @FlexibleDoubleConverter() required double longitude,
    required String mainAddress,
    required String subAddress,
    required String difficulty,
    required String description,
    @Default(<String>[]) List<String> features,
    @Default(<String>[]) List<String> statusList,
    required DateTime createdAt,
  }) = _SpotModel;

  factory SpotModel.fromJson(Map<String, dynamic> json) =>
      _$SpotModelFromJson(json);
}
