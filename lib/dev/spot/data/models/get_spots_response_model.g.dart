// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_spots_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetSpotsResponseModel _$GetSpotsResponseModelFromJson(
        Map<String, dynamic> json) =>
    _GetSpotsResponseModel(
      code: json['code'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SpotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetSpotsResponseModelToJson(
        _GetSpotsResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
