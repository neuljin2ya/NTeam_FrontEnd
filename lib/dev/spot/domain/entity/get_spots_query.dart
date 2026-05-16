import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_spots_query.freezed.dart';

@freezed
abstract class GetSpotsQuery with _$GetSpotsQuery {
  const factory GetSpotsQuery({
    String? mainAddress,
    String? subAddress,
    String? difficulty,
    List<String>? features,
    List<String>? statuses,
    int? spotId,
  }) = _GetSpotsQuery;
}
