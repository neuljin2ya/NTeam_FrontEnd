// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocalSearchResponseModel _$LocalSearchResponseModelFromJson(
        Map<String, dynamic> json) =>
    _LocalSearchResponseModel(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  LocalSearchItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LocalSearchItemModel>[],
      total: (json['total'] as num?)?.toInt() ?? 0,
      start: (json['start'] as num?)?.toInt() ?? 1,
      display: (json['display'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$LocalSearchResponseModelToJson(
        _LocalSearchResponseModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'start': instance.start,
      'display': instance.display,
    };

_LocalSearchItemModel _$LocalSearchItemModelFromJson(
        Map<String, dynamic> json) =>
    _LocalSearchItemModel(
      title: json['title'] as String? ?? '',
      link: json['link'] as String? ?? '',
      category: json['category'] as String? ?? '',
      description: json['description'] as String? ?? '',
      telephone: json['telephone'] as String? ?? '',
      address: json['address'] as String? ?? '',
      roadAddress: json['roadAddress'] as String? ?? '',
      mapx: json['mapx'] as String? ?? '',
      mapy: json['mapy'] as String? ?? '',
    );

Map<String, dynamic> _$LocalSearchItemModelToJson(
        _LocalSearchItemModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'category': instance.category,
      'description': instance.description,
      'telephone': instance.telephone,
      'address': instance.address,
      'roadAddress': instance.roadAddress,
      'mapx': instance.mapx,
      'mapy': instance.mapy,
    };
