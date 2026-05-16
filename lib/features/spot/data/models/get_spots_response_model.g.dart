// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_spots_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetSpotsResponseModel _$GetSpotsResponseModelFromJson(
        Map<String, dynamic> json) =>
    _GetSpotsResponseModel(
      isSuccess: json['isSuccess'] as bool,
      code: json['code'] as String,
      message: json['message'] as String,
      data: (json['result'] as List<dynamic>?)
          ?.map((e) => SpotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetSpotsResponseModelToJson(
        _GetSpotsResponseModel instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.data,
    };
