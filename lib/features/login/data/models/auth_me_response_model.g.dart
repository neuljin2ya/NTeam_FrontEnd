// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_me_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthMeResponseModel _$AuthMeResponseModelFromJson(Map<String, dynamic> json) =>
    _AuthMeResponseModel(
      isSuccess: json['isSuccess'] as bool,
      code: json['code'] as String,
      message: json['message'] as String,
      result: json['result'] == null
          ? null
          : AuthMeResultModel.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthMeResponseModelToJson(
        _AuthMeResponseModel instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'code': instance.code,
      'message': instance.message,
      'result': instance.result,
    };
