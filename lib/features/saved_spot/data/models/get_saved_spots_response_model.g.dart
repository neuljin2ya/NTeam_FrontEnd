// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_saved_spots_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetSavedSpotsResponseModel _$GetSavedSpotsResponseModelFromJson(
        Map<String, dynamic> json) =>
    _GetSavedSpotsResponseModel(
      isSuccess: json['isSuccess'] as bool,
      code: json['code'] as String,
      message: json['message'] as String,
      data: (json['result'] as List<dynamic>?)
          ?.map(
              (e) => SavedSpotListItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetSavedSpotsResponseModelToJson(
        _GetSavedSpotsResponseModel instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.data,
    };
