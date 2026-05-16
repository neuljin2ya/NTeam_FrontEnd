// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_spot_status_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddSpotStatusResponseModel _$AddSpotStatusResponseModelFromJson(
        Map<String, dynamic> json) =>
    _AddSpotStatusResponseModel(
      isSuccess: json['isSuccess'] as bool,
      code: json['code'] as String,
      message: json['message'] as String,
      result: json['result'] == null
          ? null
          : SpotStatusListModel.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddSpotStatusResponseModelToJson(
        _AddSpotStatusResponseModel instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result,
    };
