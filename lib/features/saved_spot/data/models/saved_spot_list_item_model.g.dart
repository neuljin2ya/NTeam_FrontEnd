// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_spot_list_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SavedSpotListItemModel _$SavedSpotListItemModelFromJson(
        Map<String, dynamic> json) =>
    _SavedSpotListItemModel(
      savedSpotId: (json['savedSpotId'] as num).toInt(),
      spot: SpotModel.fromJson(json['spot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SavedSpotListItemModelToJson(
        _SavedSpotListItemModel instance) =>
    <String, dynamic>{
      'savedSpotId': instance.savedSpotId,
      'spot': instance.spot,
    };
