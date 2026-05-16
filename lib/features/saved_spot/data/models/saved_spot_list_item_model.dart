import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../spot/data/models/spot_model.dart';

part 'saved_spot_list_item_model.freezed.dart';
part 'saved_spot_list_item_model.g.dart';

@freezed
abstract class SavedSpotListItemModel with _$SavedSpotListItemModel {
  const factory SavedSpotListItemModel({
    required int savedSpotId,
    required SpotModel spot,
  }) = _SavedSpotListItemModel;

  factory SavedSpotListItemModel.fromJson(Map<String, dynamic> json) =>
      _$SavedSpotListItemModelFromJson(json);
}
