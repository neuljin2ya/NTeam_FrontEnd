// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_spot_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateSpotRequestModel _$CreateSpotRequestModelFromJson(
        Map<String, dynamic> json) =>
    _CreateSpotRequestModel(
      name: json['name'] as String,
      captionImgUrl: json['captionImgUrl'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      mainAddress: json['main_address'] as String,
      subAddress: json['sub_address'] as String,
      difficulty: json['difficulty'] as String,
      description: json['description'] as String,
      features: (json['features'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      statuses: (json['statuses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$CreateSpotRequestModelToJson(
        _CreateSpotRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'captionImgUrl': instance.captionImgUrl,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'main_address': instance.mainAddress,
      'sub_address': instance.subAddress,
      'difficulty': instance.difficulty,
      'description': instance.description,
      'features': instance.features,
      'statuses': instance.statuses,
    };
