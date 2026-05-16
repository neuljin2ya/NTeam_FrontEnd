// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_video_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateVideoResponseModel _$CreateVideoResponseModelFromJson(
        Map<String, dynamic> json) =>
    _CreateVideoResponseModel(
      isSuccess: json['isSuccess'] as bool,
      code: json['code'] as String,
      message: json['message'] as String,
      result: json['result'] == null
          ? null
          : VideoModel.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateVideoResponseModelToJson(
        _CreateVideoResponseModel instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result,
    };
