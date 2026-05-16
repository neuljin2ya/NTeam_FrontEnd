import 'package:freezed_annotation/freezed_annotation.dart';

import 'geocode_language.dart';

part 'search_locations_query.freezed.dart';

@freezed
abstract class SearchLocationsQuery with _$SearchLocationsQuery {
  const factory SearchLocationsQuery({
    required String query,
    double? nearLatitude,
    double? nearLongitude,
    @Default(GeocodeLanguage.kor) GeocodeLanguage language,
    @Default(1) int page,
    @Default(30) int count,
    String? filter,
  }) = _SearchLocationsQuery;
}
