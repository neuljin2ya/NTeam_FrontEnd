// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_status_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpotStatusListModel _$SpotStatusListModelFromJson(Map<String, dynamic> json) =>
    _SpotStatusListModel(
      spotStatusListId:
          const FlexibleIntConverter().fromJson(json['spotStatusListId']),
      description: json['description'] as String? ?? '',
      statuses: (json['statuses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$SpotStatusListModelToJson(
        _SpotStatusListModel instance) =>
    <String, dynamic>{
      'spotStatusListId':
          const FlexibleIntConverter().toJson(instance.spotStatusListId),
      'description': instance.description,
      'statuses': instance.statuses,
    };
