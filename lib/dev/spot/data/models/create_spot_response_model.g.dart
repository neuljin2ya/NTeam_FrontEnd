// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_spot_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateSpotResponseModel _$CreateSpotResponseModelFromJson(
        Map<String, dynamic> json) =>
    _CreateSpotResponseModel(
      code: json['code'] as String,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : CreateSpotDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateSpotResponseModelToJson(
        _CreateSpotResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
