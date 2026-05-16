import 'package:freezed_annotation/freezed_annotation.dart';

part 'spot_model.freezed.dart';
part 'spot_model.g.dart';

@freezed
abstract class SpotModel with _$SpotModel {
  const factory SpotModel({
    required int spotId,
    required String name,
    required String captionImgUrl,
    required String latitude,
    required String longitude,
    required String mainAddress,
    required String subAddress,
    required String difficulty,
    required String description,
    @Default(<String>[]) List<String> features,
    @Default(<String>[]) List<String> statuses,
    required DateTime createdAt,
  }) = _SpotModel;

  factory SpotModel.fromJson(Map<String, dynamic> json) =>
      _$SpotModelFromJson(json);
}
