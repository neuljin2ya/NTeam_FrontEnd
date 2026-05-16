// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_saved_spot_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaveSavedSpotResponseModel _$SaveSavedSpotResponseModelFromJson(
        Map<String, dynamic> json) =>
    _SaveSavedSpotResponseModel(
      isSuccess: json['isSuccess'] as bool,
      code: json['code'] as String,
      message: json['message'] as String,
      result: json['result'] == null
          ? null
          : SavedSpotResultModel.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SaveSavedSpotResponseModelToJson(
        _SaveSavedSpotResponseModel instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result,
    };
