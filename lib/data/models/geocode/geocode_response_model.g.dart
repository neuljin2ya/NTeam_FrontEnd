// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocode_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeocodeResponseModel _$GeocodeResponseModelFromJson(
        Map<String, dynamic> json) =>
    _GeocodeResponseModel(
      status: json['status'] as String? ?? '',
      meta: json['meta'] == null
          ? const GeocodeMetaModel()
          : GeocodeMetaModel.fromJson(json['meta'] as Map<String, dynamic>),
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) =>
                  GeocodeAddressModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GeocodeAddressModel>[],
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$GeocodeResponseModelToJson(
        _GeocodeResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'meta': instance.meta,
      'addresses': instance.addresses,
      'errorMessage': instance.errorMessage,
    };

_GeocodeMetaModel _$GeocodeMetaModelFromJson(Map<String, dynamic> json) =>
    _GeocodeMetaModel(
      totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      count: (json['count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$GeocodeMetaModelToJson(_GeocodeMetaModel instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'page': instance.page,
      'count': instance.count,
    };

_GeocodeAddressModel _$GeocodeAddressModelFromJson(Map<String, dynamic> json) =>
    _GeocodeAddressModel(
      roadAddress: json['roadAddress'] as String? ?? '',
      jibunAddress: json['jibunAddress'] as String? ?? '',
      englishAddress: json['englishAddress'] as String? ?? '',
      addressElements: (json['addressElements'] as List<dynamic>?)
              ?.map((e) => GeocodeAddressElementModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <GeocodeAddressElementModel>[],
      longitude: json['x'] as String,
      latitude: json['y'] as String,
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GeocodeAddressModelToJson(
        _GeocodeAddressModel instance) =>
    <String, dynamic>{
      'roadAddress': instance.roadAddress,
      'jibunAddress': instance.jibunAddress,
      'englishAddress': instance.englishAddress,
      'addressElements': instance.addressElements,
      'x': instance.longitude,
      'y': instance.latitude,
      'distance': instance.distance,
    };

_GeocodeAddressElementModel _$GeocodeAddressElementModelFromJson(
        Map<String, dynamic> json) =>
    _GeocodeAddressElementModel(
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      longName: json['longName'] as String? ?? '',
      shortName: json['shortName'] as String? ?? '',
      code: json['code'] as String? ?? '',
    );

Map<String, dynamic> _$GeocodeAddressElementModelToJson(
        _GeocodeAddressElementModel instance) =>
    <String, dynamic>{
      'types': instance.types,
      'longName': instance.longName,
      'shortName': instance.shortName,
      'code': instance.code,
    };
