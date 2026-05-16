// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_videos_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetVideosResponseModel _$GetVideosResponseModelFromJson(
        Map<String, dynamic> json) =>
    _GetVideosResponseModel(
      isSuccess: json['isSuccess'] as bool,
      code: json['code'] as String,
      message: json['message'] as String,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetVideosResponseModelToJson(
        _GetVideosResponseModel instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result,
    };
