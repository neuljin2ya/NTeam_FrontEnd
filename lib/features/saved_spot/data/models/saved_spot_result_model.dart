import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_spot_result_model.freezed.dart';
part 'saved_spot_result_model.g.dart';

@freezed
abstract class SavedSpotResultModel with _$SavedSpotResultModel {
  const factory SavedSpotResultModel({
    required int savedSpotId,
  }) = _SavedSpotResultModel;

  factory SavedSpotResultModel.fromJson(Map<String, dynamic> json) =>
      _$SavedSpotResultModelFromJson(json);
}
