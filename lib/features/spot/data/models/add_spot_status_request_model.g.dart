// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_spot_status_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddSpotStatusRequestModel _$AddSpotStatusRequestModelFromJson(
        Map<String, dynamic> json) =>
    _AddSpotStatusRequestModel(
      statuses:
          (json['statuses'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AddSpotStatusRequestModelToJson(
        _AddSpotStatusRequestModel instance) =>
    <String, dynamic>{
      'statuses': instance.statuses,
    };
