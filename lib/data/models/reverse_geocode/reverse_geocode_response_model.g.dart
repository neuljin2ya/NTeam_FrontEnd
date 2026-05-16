// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reverse_geocode_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReverseGeocodeResponseModel _$ReverseGeocodeResponseModelFromJson(
        Map<String, dynamic> json) =>
    _ReverseGeocodeResponseModel(
      status: json['status'] == null
          ? const ReverseGeocodeStatusModel()
          : ReverseGeocodeStatusModel.fromJson(
              json['status'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
              ?.map((e) =>
                  ReverseGeocodeResultModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ReverseGeocodeResultModel>[],
    );

Map<String, dynamic> _$ReverseGeocodeResponseModelToJson(
        _ReverseGeocodeResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
    };

_ReverseGeocodeStatusModel _$ReverseGeocodeStatusModelFromJson(
        Map<String, dynamic> json) =>
    _ReverseGeocodeStatusModel(
      code: (json['code'] as num?)?.toInt() ?? -1,
      name: json['name'] as String? ?? '',
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$ReverseGeocodeStatusModelToJson(
        _ReverseGeocodeStatusModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'message': instance.message,
    };

_ReverseGeocodeResultModel _$ReverseGeocodeResultModelFromJson(
        Map<String, dynamic> json) =>
    _ReverseGeocodeResultModel(
      name: json['name'] as String? ?? '',
      region: json['region'] == null
          ? null
          : ReverseGeocodeRegionModel.fromJson(
              json['region'] as Map<String, dynamic>),
      land: json['land'] == null
          ? null
          : ReverseGeocodeLandModel.fromJson(
              json['land'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReverseGeocodeResultModelToJson(
        _ReverseGeocodeResultModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'land': instance.land,
    };

_ReverseGeocodeRegionModel _$ReverseGeocodeRegionModelFromJson(
        Map<String, dynamic> json) =>
    _ReverseGeocodeRegionModel(
      area0: json['area0'] == null
          ? null
          : ReverseGeocodeAreaModel.fromJson(
              json['area0'] as Map<String, dynamic>),
      area1: json['area1'] == null
          ? null
          : ReverseGeocodeAreaModel.fromJson(
              json['area1'] as Map<String, dynamic>),
      area2: json['area2'] == null
          ? null
          : ReverseGeocodeAreaModel.fromJson(
              json['area2'] as Map<String, dynamic>),
      area3: json['area3'] == null
          ? null
          : ReverseGeocodeAreaModel.fromJson(
              json['area3'] as Map<String, dynamic>),
      area4: json['area4'] == null
          ? null
          : ReverseGeocodeAreaModel.fromJson(
              json['area4'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReverseGeocodeRegionModelToJson(
        _ReverseGeocodeRegionModel instance) =>
    <String, dynamic>{
      'area0': instance.area0,
      'area1': instance.area1,
      'area2': instance.area2,
      'area3': instance.area3,
      'area4': instance.area4,
    };

_ReverseGeocodeAreaModel _$ReverseGeocodeAreaModelFromJson(
        Map<String, dynamic> json) =>
    _ReverseGeocodeAreaModel(
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$ReverseGeocodeAreaModelToJson(
        _ReverseGeocodeAreaModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_ReverseGeocodeLandModel _$ReverseGeocodeLandModelFromJson(
        Map<String, dynamic> json) =>
    _ReverseGeocodeLandModel(
      type: json['type'] as String? ?? '',
      name: json['name'] as String? ?? '',
      number1: json['number1'] as String? ?? '',
      number2: json['number2'] as String? ?? '',
      addition0: json['addition0'] == null
          ? null
          : ReverseGeocodeAdditionModel.fromJson(
              json['addition0'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReverseGeocodeLandModelToJson(
        _ReverseGeocodeLandModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'number1': instance.number1,
      'number2': instance.number2,
      'addition0': instance.addition0,
    };

_ReverseGeocodeAdditionModel _$ReverseGeocodeAdditionModelFromJson(
        Map<String, dynamic> json) =>
    _ReverseGeocodeAdditionModel(
      type: json['type'] as String? ?? '',
      value: json['value'] as String? ?? '',
    );

Map<String, dynamic> _$ReverseGeocodeAdditionModelToJson(
        _ReverseGeocodeAdditionModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
