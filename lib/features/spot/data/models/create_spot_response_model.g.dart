// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_spot_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateSpotResponseModel _$CreateSpotResponseModelFromJson(
        Map<String, dynamic> json) =>
    _CreateSpotResponseModel(
      isSuccess: json['isSuccess'] as bool,
      code: json['code'] as String,
      message: json['message'] as String,
      data: json['result'] == null
          ? null
          : CreateSpotDataModel.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateSpotResponseModelToJson(
        _CreateSpotResponseModel instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.data,
    };
