// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_video_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateVideoRequestModel _$CreateVideoRequestModelFromJson(
        Map<String, dynamic> json) =>
    _CreateVideoRequestModel(
      spotId: (json['spotId'] as num).toInt(),
      title: json['title'] as String,
      videoUrl: json['videoUrl'] as String,
    );

Map<String, dynamic> _$CreateVideoRequestModelToJson(
        _CreateVideoRequestModel instance) =>
    <String, dynamic>{
      'spotId': instance.spotId,
      'title': instance.title,
      'videoUrl': instance.videoUrl,
    };
