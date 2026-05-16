// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpotModel _$SpotModelFromJson(Map<String, dynamic> json) => _SpotModel(
      spotId: (json['spotId'] as num).toInt(),
      name: json['name'] as String,
      captionImgUrl: json['captionImgUrl'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      mainAddress: json['mainAddress'] as String,
      subAddress: json['subAddress'] as String,
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
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$SpotModelToJson(_SpotModel instance) =>
    <String, dynamic>{
      'spotId': instance.spotId,
      'name': instance.name,
      'captionImgUrl': instance.captionImgUrl,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'mainAddress': instance.mainAddress,
      'subAddress': instance.subAddress,
      'difficulty': instance.difficulty,
      'description': instance.description,
      'features': instance.features,
      'statuses': instance.statuses,
      'createdAt': instance.createdAt.toIso8601String(),
    };
