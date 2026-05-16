// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpotModel _$SpotModelFromJson(Map<String, dynamic> json) => _SpotModel(
      spotId: const FlexibleIntConverter().fromJson(json['spotId']),
      name: json['name'] as String,
      captionImgUrl: json['captionImgUrl'] as String? ?? '',
      latitude: const FlexibleDoubleConverter().fromJson(json['latitude']),
      longitude: const FlexibleDoubleConverter().fromJson(json['longitude']),
      mainAddress: json['mainAddress'] as String,
      subAddress: json['subAddress'] as String,
      difficulty: json['difficulty'] as String,
      description: json['description'] as String? ?? '',
      features: (json['features'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      statusList: json['statusList'] == null
          ? const <SpotStatusListModel>[]
          : const FlexibleSpotStatusListConverter()
              .fromJson(json['statusList']),
      createdAt: const FlexibleDateTimeConverter().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$SpotModelToJson(_SpotModel instance) =>
    <String, dynamic>{
      'spotId': const FlexibleIntConverter().toJson(instance.spotId),
      'name': instance.name,
      'captionImgUrl': instance.captionImgUrl,
      'latitude': const FlexibleDoubleConverter().toJson(instance.latitude),
      'longitude': const FlexibleDoubleConverter().toJson(instance.longitude),
      'mainAddress': instance.mainAddress,
      'subAddress': instance.subAddress,
      'difficulty': instance.difficulty,
      'description': instance.description,
      'features': instance.features,
      'statusList':
          const FlexibleSpotStatusListConverter().toJson(instance.statusList),
      'createdAt': const FlexibleDateTimeConverter().toJson(instance.createdAt),
    };
