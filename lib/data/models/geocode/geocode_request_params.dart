import 'package:freezed_annotation/freezed_annotation.dart';

part 'geocode_request_params.freezed.dart';

@freezed
abstract class GeocodeRequestParams with _$GeocodeRequestParams {
  const factory GeocodeRequestParams({
    required String query,
    double? centerLongitude,
    double? centerLatitude,
    String? filter,
    @Default('kor') String languageCode,
    @Default(1) int page,
    @Default(10) int count,
  }) = _GeocodeRequestParams;

  const GeocodeRequestParams._();

  Map<String, dynamic> toQueryParameters() {
    final bool hasCenter =
        centerLongitude != null && centerLatitude != null;
    return <String, dynamic>{
      'query': query,
      'language': languageCode,
      'page': page,
      'count': count,
      if (hasCenter) 'coordinate': '$centerLongitude,$centerLatitude',
      if (filter != null && filter!.isNotEmpty) 'filter': filter,
    };
  }
}
